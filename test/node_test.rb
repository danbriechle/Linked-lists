# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../app/node'

class NodeTest < Minitest::Test
  def test_it_exists
    assert_instance_of(Node, Node.new('string'))
  end

  def test_it_knows_when_its_empty
    empty_node = Node.new(nil)
    full_node = Node.new(1)

    assert_equal(empty_node.is_empty?, true)
    assert_equal(full_node.is_empty?, false)
  end
end
