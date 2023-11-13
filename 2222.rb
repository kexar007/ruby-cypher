puts 'enter a string:'
input_string = gets.to_s
puts 'enter shift value:'
shift_value = gets.to_i

puts 'entered: ' + input_string

def encrypting(input_string, shift_value)
  output_string = []
  input_string = input_string.downcase.chars.map! { |c| c.ord }
  input_string.each do |c|
    if c.ord < 97 || c.ord > 122
      output_string.push(c)
    elsif c - shift_value < 97
      output_string.push(123 - (97 - (c - shift_value)))
    else
      output_string.push(c - shift_value)
    end
  end
  output_string.map! { |c| c.chr }
  puts 'encrypted: ' + output_string.join()
end
encrypting(input_string, shift_value)