require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Example of a variable definition that will be available in your Pry session once you've built out the model:

lucy = Attendee.new("Lucy", 22)
fred = Attendee.new("Fred", 34)
jim  = Attendee.new("Jim", 52)
george = Attendee.new("George", 88)
powell = Attendee.new("Powell", 12)

bad_theatre = Venue.new("bad theatre", 100)
good_theatre = Venue.new("good theatre", 500)

concert = Event.new("Concert", 4, bad_theatre)
movie = Event.new("Movie", 10, good_theatre)


lucy.buy_ticket(concert, 25)
lucy.buy_ticket(movie, 40)
fred.buy_ticket(concert, 25)
fred.buy_ticket(movie, 40)
jim.buy_ticket(concert, 25)
jim.buy_ticket(movie, 40)
george.buy_ticket(concert, 25)
george.buy_ticket(movie, 50)
powell.buy_ticket(concert, 25)

#The variable `lucy` will point to an instance of a new attendee

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
