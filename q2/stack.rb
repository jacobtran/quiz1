class Stack
  attr_reader :stack

  def initialize
    @stack = Array.new
  end

  def remove
    @stack.pop
  end

  def add(element)
    @stack.push(element)
  end
end
