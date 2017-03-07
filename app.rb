require('sinatra/activerecord')
require('sinatra')
require('sinatra/reloader')
require('./lib/event')
require('./lib/attendee')
require('./lib/categorie')
also_reload('lib/**/*.rb')
require("pg")



#form for adding attendee to event
get('/attendees/new') do
  @events = Event.all()
  erb(:attendee_form)
end

#display all attendees
get('/attendees') do
  @attendees = Attendee.all()
  erb(:attendees)
end

#display the attendee on attendees
post('/attendees') do
  name = params.fetch("name")
  number = params.fetch("number")
  attendee = Attendee.new({:name => name, :number => number, :id => nil})
  attendee.save()
  # @attendees = Attendee.all()
  erb(:fiti)
end
