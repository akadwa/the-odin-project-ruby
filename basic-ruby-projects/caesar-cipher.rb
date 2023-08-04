def rotate(number)
  if number > 0
    number % -26
  else
    number % 26
  end
end


def caesar_cipher(string, shift_factor = 0)
  ascii_string = string.bytes

  ascii_string.each_with_index do | number, index |
    if number >= 97 && number <= 122
      ascii_string[index] += shift_factor
      if ascii_string[index] < 97 || ascii_string[index] > 122
        ascii_string[index] += rotate(shift_factor) until ascii_string[index] >= 97 && ascii_string[index] <= 122
      end
    elsif number >= 65 && number <= 90
      ascii_string[index] += shift_factor
      if ascii_string[index] < 65 || ascii_string[index] > 90
        ascii_string[index] += rotate(shift_factor) until ascii_string[index] >= 65 && ascii_string[index] <= 90
      end
    else
      ascii_string[index] = number
    end
  end

  return ascii_string.pack('c*')
end

p caesar_cipher("AaBbCcXxYyZz", -30)
p caesar_cipher("Hello, my name is RAAAA", 1)
