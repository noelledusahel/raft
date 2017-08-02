class OauthController < ApplicationController
  def begin
    # declare the URL where the user will be sent to after granting permission to your app:
    return_url = "http://raft2k17.herokuapp.com/oauth/return"


    logger.info return_url
    # scopes are the permissions we're asking for, deliminated by "|"
    # Learn more: https://developers.dwolla.com/dev/pages/auth#scopes
    scopes = "accountinfofull|balance|send|funding"

    @oauth_url = auth.url
    # @oauth_url = Dwolla::OAuth.get_auth_url(return_url, scopes)
  end

  def return

    @account_token = auth.callback(params)
    root = @account_token.get '/'
    session[:url] = root._links.account.href
    funding_sources = @account_token.get "#{session[:url]}/funding-sources"
    funding_sources._embedded['funding-sources'][0]['status']
    funding_sources_id = funding_sources._embedded['funding-sources'][0]['id']

    if funding_sources._embedded['funding-sources'][0]['status'] == 'verified'
      current_user.dwolla_verified = true
      current_user.account_url = funding_sources._embedded['funding-sources'][0]['_links']['self']['href']
      current_user.access_token = @account_token.access_token
      current_user.refresh_token = @account_token.refresh_token
      current_user.save
    end

    ## WORKED:
    # root = @account_token.get "/"
    #account_url = root._links.account.href  --source and destination of transf
    #account = @account_token.get account_url


    # this is where we set current_user.dwolla_verified == true
    # decide here what user information we're going to store for later transactions

    redirect_to user_path(current_user)
  end

  def authenticate
    redirect_to auth.url
  end

  def callback
    account_token = auth.callback(params)
    # session[:account_id] = token.account_id
  end

  private

  def auth
     return_url = "http://raft2k17.herokuapp.com/oauth/return"
    $dwolla.auths.new redirect_uri: return_url, scope: "accountinfofull|balance|send|funding", state: session[:state] ||= SecureRandom.hex
  end
end
