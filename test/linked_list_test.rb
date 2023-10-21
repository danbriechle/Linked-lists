# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../app/linked_list'
require_relative '../app/node'

class LinkedListTest < Minitest::Test
  def test_it_exists
    assert_instance_of(LinkedList, LinkedList.new('string'))
  end

  # is_empty?: return true if the linked list is empty
  # push: given a data, add a new node in the end
  # unshift: add a new node in the front
  # pop: remove the last node and return it
  # shift: remove the first node and return it
  # size: return the length of linked list
  # pretty_print: print the current linked list as an array
  # clear: clear the whole linked list
end
