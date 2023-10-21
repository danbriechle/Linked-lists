# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../app/node'

class NodeTest < Minitest::Test
  def test_it_exists
    assert_instance_of(Node, Node.new("string"))
  end
end