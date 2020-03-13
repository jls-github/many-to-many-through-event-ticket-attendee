class Venue
    attr_accessor :name, :cost

    @@all = []

    def initialize(name, cost)
        @name = name
        @cost = cost
        @@all << self
    end

    def self.all
        @@all
    end

    def self.guest_lists
        self.all.map {|venue| venue.events.map{|event| {event.name => event.attendees.map{|attendee| attendee.name}}}}
    end

    def events
        Event.all.select {|event| event.venue == self}
    end

    def attendees
        self.events.reduce(0) {|sum, event| sum + event.attendees.length}
    end

end