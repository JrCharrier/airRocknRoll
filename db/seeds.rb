require 'open-uri'
require 'json'

puts "Cleaning database..."
Booking.destroy_all
Character.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create!(
  first_name: "Niko",
  last_name: "Nitrax",
  nickname: "Nitrax64",
  email: "user@example.com",
  password: "password"
)
user2 = User.create!(
  first_name: "Lola",
  last_name: "Benitez",
  nickname: "Choopachoops",
  email: "user_2@example.com",
  password: "password"
)

puts "Created users"

key = LHYcKTQaJQlilpBtTdWC
secret_key = qAkqycnEwZSfPrxFLeOmxYxJHLezwcAm
artist_id = (1..100000)
url = "https://api.discogs.com/database/search?q=rock&type=/artists/#{artist_id.rand}&key=#{key}&secret=#{secret_key}"
response = URI.open(url).read
data = JSON.parse(response)['results']


