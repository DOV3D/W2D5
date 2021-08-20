class Flight

    def initialize(flight_number, capacity)
        @flight_number = flight_number
        @capacity = capacity
        @passengers = [] 
    end

    def passengers
        @passengers
    end

    def full?
        if @passengers.length < @capacity
            false
        else
            true
        end
    end

    def board_passenger(passenger_i)
        if passenger_i.has_flight?(@flight_number) && !self.full?
            @passengers << passenger_i
        end
    end

    def list_passengers
        @passengers.map(&:name)
    end

    def [](index)
        @passengers[index]
    end

    def <<(passenger_i)
        board_passenger(passenger_i)
    end
end