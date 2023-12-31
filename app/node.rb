# frozen_string_literal: true

class Node
  attr_accessor :value, :next_node, :is_empty

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end

  def is_empty?
    @is_empty = @value.nil?
  end
end
