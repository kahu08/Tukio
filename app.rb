require('sinatra/activerecord')
require('sinatra')
require('sinatra/reloader')
require('./lib/event')
require('./lib/attendee')
require('./lib/categorie')
also_reload('lib/**/*.rb')
require("pg")


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
