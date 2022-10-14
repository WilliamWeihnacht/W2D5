require_relative "item.rb"

class List

    attr_accessor :label

    def initialize(label)
        @label = label
        @items = []
    end

    def add_item(title, deadline, description=nil)
        if !Item.valid_date?(deadline)
            return false
        end
        item = Item.new(title,deadline,description||"")
        @items << item
        return true
    end

    def size
        @items.length
    end

    

end

l = List.new("idk")
p l.add_item("title","1997-03-21")
p l.add_item("title","1997-03-21","description")
p l.add_item("title","1997-03-99","description")
p l