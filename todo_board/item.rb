

class Item

    attr_accessor :title, :deadline, :description

    def self.valid_date?(date)
        date[0..3].each_char do |n|
            begin
                n.to_i
            rescue
                return false
            end
        end
        if date[4] != '-' || date[7] != '-'
            return false
        end
        if date[5..6].to_i > 12 || date[5..6].to_i < 1
            return false
        end
        if date[8..9].to_i < 1 || date[8..9].to_i > 31
            return false
        end
        return true
    end

    def initialize(title,deadline,description)
        @title = title
        @description = description
        if Item.valid_date?(deadline)
            @deadline = deadline
        else
            puts "tried to initialize item with invalid deadline"
            raise ArgumentError.new
        end
    end
end
