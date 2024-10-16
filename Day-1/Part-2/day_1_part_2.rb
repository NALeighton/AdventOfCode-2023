# frozen_string_literal: true

# Removed downcase conversion to increase speed. All input is in lowercase already, removing the need of the conversion.

def o_words(line, index)
  if line.length - index > 3 && line[index...index + 3] == 'one'
    1
  else
    -1
  end
end

def f_words(line, index)
  if line.length - index > 4
    case line[index...index + 4]
    when 'four'
      4
    when 'five'
      5
    else
      -1
    end
  else
    -1
  end
end

def t_words(line, index)
  if line.length - index > 3 && line[index...index + 3] == 'two'
    2
  elsif line.length - index > 5 && line[index...index + 5] == 'three'
    3
  else
    -1
  end
end

def n_words(line, index)
  if line.length - index > 4 && line[index...index + 4] == 'nine'
    9
  else
    -1
  end
end

def s_words(line, index)
  if line.length - index > 3 && line[index...index + 3] == 'six'
    6
  elsif line.length - index > 5 && line[index...index + 5] == 'seven'
    7
  else
    -1
  end
end

def e_words(line, index)
  if line.length - index > 5 && line[index...index + 5] == 'eight'
    8
  else
    -1
  end
end

def get_digit(line, index)
  case line[index]
  when 'o'
    o_words(line, index)
  when 'f'
    f_words(line, index)
  when 't'
    t_words(line, index)
  when 'n'
    n_words(line, index)
  when 's'
    s_words(line, index)
  when 'e'
    e_words(line, index)
  else
    -1
  end
end


# Timing code
require './timer'
timer = Timer.new
timer.start

Dir.chdir(File.dirname(__FILE__)) # This is here to ensure the working directory is in the correct place

total = 0

File.readlines('input.txt').each do |line|
  first_num = 0
  last_num = 0

  range = (0...line.length) # Speed improvement, this hurt my sole but works

  range.each do |i|
    if line[i].match?(/[[:digit:]]/)
      first_num = Integer(line[i])
      break
    else
      digit = get_digit(line, i)
      if digit >= 0
        first_num = digit
        break
      end
    end
  end

  range.reverse_each do |i|
    if line[i].match?(/[[:digit:]]/)
      last_num = Integer(line[i])
      break
    elsif line.length - i > 3
      digit = get_digit(line, i)
      if digit >= 0
        last_num = digit
        break
      end
    end
  end
  total += ((first_num * 10) + last_num)
end

puts total

# Timing Code
timer.stop
