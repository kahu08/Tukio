require('sinatra/activerecord')
require('sinatra')
require('sinatra/reloader')
require('./lib/event')
require('./lib/attendee')
require('./lib/categorie')
also_reload('lib/**/*.rb')
require("pg")





get("/") do
  @category = Categorie.all()
  erb(:index)
end

get("/admin") do
  @categories = Categorie.all()
  erb(:admin)
end

post('/categories')do
 name = params.fetch("categorie_name")
 category = Categorie.new({:categorie_name => name, :id => nil})
 category.save()
 erb(:success)
end

get('/categories/:id')do
@category = Categorie.find(params.fetch("id").to_i())
 erb(:category)
end

post('/event')do
   organization = params.fetch("organization")
   event_name = params.fetch("event_name")
   location = params.fetch("location")
   fee = params.fetch("fee").to_i()
   time = params.fetch("time")
   categorie_id = params.fetch("categorie_id").to_i()
  #  @categorie = Categorie.find(categorie_id)
   event = Event.new({:organization => organization,:event_name => event_name, :location => location, :fee => fee, :time => time, :categorie_id =>categorie_id, :id => nil})
   event.save()
 erb(:success)
end

get('/event/:id')do 
@event = Event.find(params.fetch("id").to_i())
 erb(:attendee_form)
end

post('/attendees')do
 name = params.fetch("name")
 number = params.fetch("number")
 event_id = params.fetch("event_id").to_i()
 attendee = Attendee.new({:name => name, :number => number, :event_id => event_id, :id => nil})
 attendee.save()
 erb(:success)
end