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
  erb :location
  erb(:admin)
end

post('/categories')do
 name = params.fetch("categorie_name")
 category = Categorie.new({:categorie_name => name})
 category.save()
 erb(:success)
end

get('/categories/:id')do

@category = Categorie.find(params.fetch("id").to_i())
 erb(:category)
end

  post('/event')do
    event_name = params.fetch("event_name")
     organization = params.fetch("organization")
     time = params.fetch("time")
     location = params.fetch("location")
     fee = params.fetch("fee").to_i()
     categorie_id = params.fetch("categorie_id").to_i()
     @categorie = Categorie.find(categorie_id)
     event = Event.new(:event_name => event_name, :organization => organization, :time => time, :location => location, :fee => fee, :categorie_id =>categorie_id )
     event.save()
   erb(:success)

  end
