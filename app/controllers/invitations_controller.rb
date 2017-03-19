class InvitationsController < ApplicationController

  def new
  end

  def index
    @group = Group.find_by(id: params[:group_id])
    if params[:search]
      @users = User.search(params[:search])
    else
      @users = User.all
    end
  end

  def show
    @user = User.find_by(id: current_user.id)
  end

  def create
    @group = Group.find_by(id: params[:group_id])
    @invitation = Invitation.new(invitation_params)
      if @invitation.save
        InvitationMailer.invitation_email(@invitation).deliver_now
        redirect_to group_invitation_path(@group, @invitation)
      else
        format.html { render action: 'new'}
      end
  end

  private
  def invitation_params
    params.require(:invitation).permit(:sender_id, :recipient_id)
  end

end
