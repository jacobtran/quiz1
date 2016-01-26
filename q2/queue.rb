class Queue
  attr_reader :queue

  def initialize
    @queue = Array.new
  end

  def remove
    @queue.pop
  end

  def add(element)
    @queue.unshift(element)
  end
end
