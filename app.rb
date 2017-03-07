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

get ("/event/new") do
  @categories=Categorie.all()
erb(:event_form)
end


post("/event") do
    @event_name = params.fetch("event_name")
    @organization = params.fetch("organization")
    @time = params.fetch("time")
    @location = params.fetch("location")
    @fee = params.fetch("fee").to_i()
    event = Event.new({:event_name => @event_name, :organization => @organization, :time => @time, :location => @location, :fee => @fee})
    event.save()
    @events = Event.all()
    erb(:events)
end

get("/events/:id") do
  @events = Event.find(params.fetch("id").to_i())
  erb(:event)
end

get('/categories/new')do
  erb(:category_form)
end

post('/categories')do
  name = params.fetch("categorie_name")
  category = Categorie.new({:categorie_name => name})
  category.save()
  erb(:success)
end

get('/categories')do
@category = Categorie.all()
  erb(:categories)
end

get('/categories/:id')do
@category = Categorie.find(params.fetch("id").to_i())
  erb(:category)
end
