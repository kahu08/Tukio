ENV['RACK_ENV'] = 'test'

require("sinatra/activerecord")
require("rspec")
require("pg")
require("division")
require("employee")
require("pry")

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM events *;")
    DB.exec("DELETE FROM attendees *;")
  end
end
