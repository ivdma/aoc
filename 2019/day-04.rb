input = (123257..647015)

# input = (111111..111120)

def has_decreasing_digits?(digits)
  digits.each_with_index do |digit, index|
    previous_digit = index > 0 ? digits[index - 1] : 0

    next if digit >= previous_digit

    return true
  end

  false
end

def has_all_different_digits?(digits)
  digits.uniq.size == 6
end

possible_passwords = []

input.map do |number|
  digits = number.to_s.chars.map(&:to_i)

  next if has_decreasing_digits?(digits)
  next if has_all_different_digits?(digits)

  possible_passwords << digits.join
end

puts possible_passwords.size
