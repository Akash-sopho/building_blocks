def bubble_sort(input)
  input = input.collect!(&:to_i)
  check = true
  while check == true do
    check = false
    (input.length - 1).times do |i|
      if input[i] > input[i+1]
        check = true
        input[i],input[i+1] = input[i+1],input[i]
      end
    end
  end
  input
end

def bubble_sort_by(input, &block)
  check = true
  while check == true do
    check = false
    (input.length - 1).times do |i|
      if block.call(input[i],input[i+1]) > 0
        input[i],input[i+1] = input[i+1],input[i]
        check = true
      end
    end
  end
  input
end
