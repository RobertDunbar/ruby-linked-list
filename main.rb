include "./node.rb"
include "./linkedlist.rb"

list = LinkedList.new("Rob list")
list.append(Node.new("1"))
list.append(Node.new("2"))
list.append(Node.new("3"))
list.append(Node.new("4"))
list.append(Node.new("5"))

p list
p list.to_s
