require('sinatra/activerecord')
require('sinatra')
require('sinatra/reloader')
require('./lib/event')
require('./lib/attendee')
require('./lib/categorie')
also_reload('lib/**/*.rb')
require("pg")



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
