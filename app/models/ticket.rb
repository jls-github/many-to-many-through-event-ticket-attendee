class Ticket #single source of information
    attr_accessor :event, :attendee, :cost

    @@all = []

    def initialize(event, attendee, cost)
        @event = event
        @attendee = attendee
        @cost = cost
        @@all << self
    end

    def self.all
        @@all
    end

end

# Ticket.all
    # Returns an array of all Ticket instances
