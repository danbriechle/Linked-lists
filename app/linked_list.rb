# frozen_string_literal: true

class LinkedList
  def initialize(value)
    @head = Node.new(value, nil)
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

  def push(value)
    if is_empty?
      @head = Node.new(value)
    else
      current_node = @head
      new_node = Node.new(value)
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
  end

  def pretty_print
    message = []

    if is_empty?
      return message
    else
      while @head.next_node != nil
        message << @head.value
        @head = @head.next_node
      end
      message << @head.value
      return message
    end
  end

  def is_empty?
    @head.is_empty?
  end

  def clear
    @head.value = nil
  end
end
