class Flight

    def initialize(flight_number,capacity)
        @flight_number = flight_number
        @capacity = capacity
        @passengers = []
    end

    def passengers
        @passengers
    end

    def full?
        return @passengers.length >= @capacity
    end
        
    def board_passenger(passenger)
        if !self.full? && passenger.has_flight?(@flight_number)
            @passengers << passenger
        end
    end

    def list_passengers
        arr = @passengers.map do |x|
            x.name
        end
        return arr
    end

    def [](index)
        return @passengers[index]
    end

    def <<(passenger)
        self.board_passenger(passenger)
    end

end