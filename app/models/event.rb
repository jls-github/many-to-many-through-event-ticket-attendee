class Event
  attr_accessor :name, :break_point, :venue

  @@all = []
  
  def initialize(name, break_point, venue)
    @name = name
    @break_point = break_point
    @venue = venue
    @@all << self
  end

  def self.all
    @@all
  end

  def tickets
    Ticket.all.select {|ticket| ticket.event == self}
  end

  def sell_to_break_even
    self.tickets.length > self.break_point ? 0 : self.break_point - self.tickets.length
  end

  def attendees #it is assumed that each attendee is unique, that an attendee does not buy multiple tickets for to use for his family
    self.tickets.map {|ticket| ticket.attendee}
  end

  def average_age
    self.attendees.reduce(0) {|sum, attendee| sum + attendee.age} / self.attendees.length
  end

end

# Event.all
  # Returns an array of all Events
# Event#sales_to_break_even
  # Returns the number of Tickets that still need to be "purchased" for this Event before the Event reaches the break-even point.
  # If the Event has sold enough Tickets to break-even, return the number 0. 
# Event#attendees
  # Returns an array of Attendee that have Tickets for the Event
# Event#average_age
  # Returns the average age of all the Attendees that will be at the Event
