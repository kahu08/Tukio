ENV['RACK_ENV'] = 'test'

require("sinatra/activerecord")
require("rspec")
require("pg")
require("event")
require("attendee")
require("categorie")
require("pry")

RSpec.configure do |config|
  config.after(:each) do
  Attendee.all().each() do |attendee|
      attendee.destroy()
    end
    Event.all().each() do |event|
        event.destroy()
      end
      Categorie.all().each() do |categorie|
          categorie.destroy()
        end
  end
end
