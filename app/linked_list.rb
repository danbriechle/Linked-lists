# frozen_string_literal: true

class LinkedList
  def initialize(value)
    @head = Node.new(value, nil)
  end

  def is_empty?
    @head.value.nil? ? true : false
  end

  def size
    return 0 if is_empty?

    count = 1
    while @head.next_node != nil
      @head = @head.next_node
      count += 1
    end
    return count
  end

  def push(data)
    if is_empty?
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
