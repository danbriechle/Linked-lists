# frozen_string_literal: true

class LinkedList
  def initialize(value)
    @head = Node.new(value, nil)
  end
end
