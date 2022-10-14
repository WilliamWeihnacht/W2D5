class Passenger

    def initialize(name)
        @name = name
        @flight_numbers = []
    end

    def name
        @name
    end

    def has_flight?(flight)
        return @flight_numbers.include?(flight) || @flight_numbers.include?(flight.upcase) || @flight_numbers.include?(flight.downcase)
    end

    def add_flight(flight)
        if !self.has_flight?(flight)
            @flight_numbers << flight.upcase
        end
    end


end