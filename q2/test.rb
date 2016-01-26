# 2. Stacks & Queues: Explain the difference between a stack and a queue. Write a Ruby class called Stack and another Ruby class called Queue. Each class should have two instance methods `add` and `remove` to add an element to the stack or queue or to remove an element from the stack or queue. Make sure that each class behaves properly as per definitions of stacks and queues.

# stack is LIFO
# queue is FIFO

load "stack.rb"
load "queue.rb"

s = Stack.new()

p s.stack
s.add(1)
p s.stack
s.add(2)
p s.stack
s.add(3)
p s.stack
s.remove()
p s.stack
s.remove()
p s.stack
s.remove()
p s.stack


q = Queue.new()

p q.queue
q.add(1)
p q.queue
q.add(2)
p q.queue
q.add(3)
p q.queue
q.remove()
p q.queue
q.remove()
p q.queue
q.remove()
p q.queue
