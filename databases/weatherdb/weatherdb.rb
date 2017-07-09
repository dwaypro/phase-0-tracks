require 'darksky'
require 'httparty'
require 'sqlite3'

#require local API KEY so not to post all over the web
#37,122

db = SQLite3::Database.new("weatherdata.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS weatherdata(
   id INTEGER PRIMARY KEY,
   location VARCHAR(255)
  )
SQL


db.execute(create_table_cmd)


puts "What is your latitude?"
latitude = gets.chomp
puts "What is your longitude?"
longitude = gets.chomp


darksky = Darksky::API.new('b01b7f67059eadbe96bf9939334273a8')

API_KEY = "b01b7f67059eadbe96bf9939334273a8"
URL = "https://api.forecast.io/forecast/#{API_KEY}/#{latitude},#{longitude}"

puts HTTParty.get(URL).body[0, 500]
location = HTTParty.get(URL).body[0, 500].to_s

puts "Would you like to store the weather information? y/n"
response = gets.chomp

if response == "y"


db.execute("INSERT INTO weatherdata (location) VALUES (?)", [location])
puts "Weatherdata stored"
else
	puts "Thanks for using weather data"

end






