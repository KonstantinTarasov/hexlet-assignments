# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def test_null_stack
    stack = Stack.new([])

    assert { stack.to_a == [] }
    assert { stack.size == 0 }
    assert { stack.empty? == true }
  end

  def test_pop
    stack = Stack.new %w[ruby php java]
    stack.pop!

    assert { stack.to_a == %w[ruby php] }
    assert { stack.size == 2 }
  end

  def test_push
    stack = Stack.new([])
    stack.push! 'ruby'
    stack.push! 'php'
    stack.push! 'java'

    assert { stack.to_a == %w[ruby php java] }
    assert { stack.size == 3 }
    assert { stack.empty? == false }
  end

  def test_clear
    stack = Stack.new %w[ruby php java]
    stack.clear!

    assert { stack.to_a == [] }
    assert { stack.empty? == true }
  end  
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
