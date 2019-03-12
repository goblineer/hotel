module Hotel

  class Reservation
    attr_reader :res_id, :block_id, :room, :cost, :date_span
  
    def initialize(input)
      @res_id = input[:res_id]
      @block_id = input[:block_id].nil? ? nil : input[:block_id]
      @room = input[:room]
      @datespan = input[:date_span]
      @cost = total_cost
    end

    def total_cost
     total_cost = room.cost * @datespan.stay_length
      return total_cost
    end
  end
end
