class Attendee
  attr_reader :name, :age

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def buy_ticket(event, cost)
    Ticket.new(event, self, cost)
  end

  def tickets
    Ticket.all.select {|ticket| ticket.attendee == self}
  end

  def events
    self.tickets.map {|ticket| ticket.event}
  end

  def money_spent
    self.tickets.reduce(0) {|sum, ticket| sum + ticket.cost} #not sure if this will work - you may have to break it out into two lines
  end

  def venues
    self.events.map {|event| event.venue}.uniq
  end

end

# Attendee.all
  # Returns an array of all Attendees
# Attendee#events
  # Returns an array of all Events that the Attendee is attending.
# Attendee#money_spent
  # Returns the dollar amount this Attendee has spent on Tickets for Events