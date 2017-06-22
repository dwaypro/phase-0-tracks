class TodoList

def initialize(list)	
@list = list

end

def get_items
list = @list
p list
end

def add_item(item)
@list << item
p @list
end

def delete_item(item)
@list.delete(item)
p @list
end

def get_item(index)
p @list[0]
end



end

list = TodoList.new(["do the dishes", "mow the lawn"])
list.get_items
list.add_item("mop")
list.delete_item("do the dishes")
list.get_item(0)