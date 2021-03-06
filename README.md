# Welcome to Raft

*Deployed at [raft2017.herokuapp.com](http://raft2017.herokuapp.com/)*

## The Team

* Al Musavi [almusavi](https://github.com/almusavi)
* Avril Duvernay [avrilanne](https://github.com/avrilanne)
* Noelle Barber [noelledusahel](https://github.com/noelledusahel)
* Sarah Dudek [sarahdudek](https://github.com/sarahdudek)

## Project Description

Raft is a Ruby on Rails web app that helps groups of friends plan events and keep each other accountable. 

This app democratizes the decision making process around setting the details for an event. First an event organizer creates a poll that offers 3 options for dates, times and locations. This poll is available for all raft members to fill out, and settles a final date time and location once all members have submitted a response. Once their response is submitted, members can RSVP to the event. 

Raft integrates Dwolla Transfers, making it possible for event organizers a bill (max $5) to Raft members that RSVP but fail to show up to an event that the group has planned. Members that receive a bill have their access to their current Raft groups until they validate this payment. 

## Dependencies

Raft requires ruby to be installed locally. Visit the [website](https://www.ruby-lang.org/en/) for instructions.

In order to be deployed locally, Raft also requires a Google Maps API Key, as well as a Dwolla API key and secret. 

To store the required API keys

1. Confirm that .env is included in .gitignore
2. Create a .env file in root folder 
3. Visit https://console.developers.google.com/ and generate a Google Maps API Key.  
4. Include Google Maps API Key in .env file
	
	`GOOGLE_API_KEY=(Paste API Key Here)`

5. Visit https://sandbox.dwolla.com/Sandbox and follow instructions to generate a Dwolla API Key and Secret

6. Include Dwolla API Key and Secret in .env file
	
	`DWOLLA_APP_KEY=(Paste Key Here)` </br>
	`DWOLLA_APP_SECRET=(Paste Secret Here)`

## Installation

To install this application locally:

1. Clone this repository to your local computer
    
    `$ git clone https://github.com/noelledusahel/raft.git`

2. Navigate to the newly cloned repo.
    
    `$ cd wherever-you-cloned-the-repo-to/raft`

3. Install dependencies using bundler. Ensure that the latest version of rails is also installed.
	
	`$ gem install rails` <br/>
    `$ bundle install`

4. Create and migrate project database    
	
	`$ rake db:create` </br>
	`$ rake db:migrate`

5. Start a local rails server.
    
    `$ rails server` 

6. In your web browser, navigate to [localhost:3000](localhost:3000) to view the app.


**Screenshots**
![Screenshot](screenshot.png)



