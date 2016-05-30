# extend is similar to inheritance with classes. the module gains the aspects of the extended module
# inlcude is the reverse of extend
module one
  def hello
    puts "hello"
  end
end

class Two
  include one
end

(three = Two.new).extend one
