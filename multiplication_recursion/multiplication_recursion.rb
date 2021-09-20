def multiply(a,b)
  multiply(b,a) if a < b
  b.zero? ? 0 : a + multiply(a,b-1)
end

puts "#{multiply(2,3)}"
puts "#{multiply(3,3)}"
puts "#{multiply(8,5)}"
puts "#{multiply(4,6)}"
puts "#{multiply(10,6)}"
