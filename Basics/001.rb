puts "Enter a number:"
number = gets.chomp.to_f

puts "Enter a unit (kg or lbs):"
unit = gets.chomp

if unit == "kg"
  pounds = number * 2.20462
  puts "#{number} kg is equal to #{pounds} lbs"
elsif unit == "lbs"
  kilograms = number / 2.20462
  puts "#{number} lbs is equal to #{kilograms} kg"
else
  puts "Invalid unit. Please enter kg or lbs."
end
