require 'pry'
require 'rest-client'
require 'json'
#
# i tell this app a theme it gives me list of books
# terminal should ask to enter a name
puts "tell me a book theme"
# get in put from user
input = gets.chomp

url= "https://www.googleapis.com/books/v1/volumes?q=#{input}"

response = RestClient.get url
#
response_hash = JSON.parse(response.body)

books = response_hash['items']
# show title

books.each do |book_hash|
puts ''
puts 'Title'
puts book_hash['volumeInfo']['title']

# show author
puts ''
puts 'Author'
puts book_hash['volumeInfo']['authors']

# show description
puts ''
puts 'Description'
puts book_hash['volumeInfo']['description']

puts '🐈' * 20
end
