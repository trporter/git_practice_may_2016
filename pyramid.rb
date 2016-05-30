puts "number please"
n=gets.chomp.to_i

n.times do |i|
  puts (" O" * (i + 1)).center(n+(1+n))
  i+=(n)
end
