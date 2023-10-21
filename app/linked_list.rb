# frozen_string_literal: true

class LinkedList
  def initialize(value)
    @head = Node.new(value, nil)
  end

  def size
    return 0 if @head.is_empty?

    count = 1
    while @head.next_node != nil
      @head = @head.next_node
      count += 1
    end
    return count
  end

  def push(data)
    if @head.is_empty?
      @head = Node.new(data)
    else
      new_node = Node.new(data)
      while @head.next_node != nil
        @head = @head.next_node
      end
      @head.next_node = new_node
    end
  end
end
