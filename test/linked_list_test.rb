# frozen_string_literal: true

require 'pry'
require 'minitest/autorun'
require_relative '../app/linked_list'
require_relative '../app/node'

class LinkedListTest < Minitest::Test
  def test_it_exists
    assert_instance_of(LinkedList, LinkedList.new('string'))
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

  # pretty_print: print the current linked list as an array
  def test_it_can_pretty_print_itself
    list = LinkedList.new('string')
    ['new string', 1, '1'].each{ |data| list.push(data) }

    assert_equal(list.pretty_print, ['string', 'new string', 1, '1'])
  end
  
  # clear: clear the whole linked list
  def test_it_can_be_cleared
    list = LinkedList.new('string')
    list.push('new string')
    list.clear

    assert_equal(list.is_empty?, true)
  end


  # unshift: add a new node in the front
  # pop: remove the last node and return it
  # shift: remove the first node and return it
end
