#pf-1

#Define a method that accepts a list of numbers as an argument and returns the sum of the odd numbers in the list.
#Test it to make sure it works.

array_of_odd_numbers = []

  def test_if_odd(array1)
    array1.each do |num|
      if num % 2 == 0
        array_of_odd_numbers << num
      else
        puts "odd"
      end
  end

end

array1 = (1..10).to_a

puts "array 1 is #{array1}"

p test_if_odd.array1
