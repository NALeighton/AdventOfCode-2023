# frozen_string_literal: true

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

  # Find the first number
  range.each do |i|
    if line[i].match?(/[[:digit:]]/)
      first_num = Integer(line[i])
      break
    end
  end

  # Find the last number
  range.reverse_each do |i|
    if line[i].match?(/[[:digit:]]/)
      last_num = Integer(line[i])
      break
    end
  end

  total += (first_num * 10) + last_num
end

puts total

# Timing Code
timer.stop
