# frozen_string_literal: true

require 'pry'
require 'minitest/autorun'
require_relative '../app/linked_list'
require_relative '../app/node'

class LinkedListTest < Minitest::Test
  def test_it_exists
    assert_instance_of(LinkedList, LinkedList.new('string'))
  end

  # is_empty?: return true if the linked list is empty
  def test_it_knows_when_its_empty
    list = LinkedList.new(nil)

    assert_equal(list.is_empty?, true)
  end

  # size: return the length of linked list
  def test_it_knows_its_length
    list = LinkedList.new('string')

    assert_equal(list.size, 1)
  end
  
  # push: given a data, add a new node in the end
  def test_it_can_be_added_to
    list = LinkedList.new('string')
    list.push('new string')

    assert_equal(list.size, 2)
  end

  
  # unshift: add a new node in the front
  # pop: remove the last node and return it
  # shift: remove the first node and return it
  # pretty_print: print the current linked list as an array
  # clear: clear the whole linked list
end
