require "./node.rb"
require "./linkedlist.rb"

list = LinkedList.new("Rob list")
list.append(Node.new("1"))
list.append(Node.new("2"))
list.append(Node.new("3"))
list.append(Node.new("4"))
list.append(Node.new("5"))


list.prepend(Node.new("8"))

p list
p list.to_s
p list.size


p list.at(3)

p list.contains?("2")

p list.find("8")

p list.pop

p list.to_s

list.insert_at(Node.new("9"), 2)

p list.to_s

list.remove_at(3)

p list.to_s
