puts "Enter the base number:"
base = gets.chomp.to_f

puts "Enter the percentage to calculate:"
percentage = gets.chomp.to_f

result = (base * percentage) / 100
puts "Result: #{result}"
