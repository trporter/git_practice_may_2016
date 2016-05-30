module HelperMethods
  array = []
  puts "give me a string"
  string = gets.chomp
  array << string.split(" ")
  array.each do |x|
    unless x=="in"|| x=="the" || x=="of" || x=="and" || x=="or" || x=="from"
    x.capitalize
    end
  end
  array.join(' ')
  p array
end
