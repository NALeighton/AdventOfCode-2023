# frozen_string_literal: true

def parse_game_id(line)
  parts = line.split(': ')
  id = parts[0].split('Game ')[1]
  [Integer(id), parts[1]]
end

def parse_rounds(line)
  line.split('; ')
end

def check_counts(round)
  red_max = 12
  green_max = 13
  blue_max = 14

  flag = true
  counts = round.split(', ')
  counts.each do |count|
    parts = count.split(' ')
    case parts[1]
    when 'red'
      flag = false if Integer(parts[0]) > red_max
    when 'green'
      flag = false if Integer(parts[0]) > green_max
    when 'blue'
      flag = false if Integer(parts[0]) > blue_max
    else
      puts "Something has gone wrong, #{parts[1]} does not exist"
    end
  end
  flag
end

# Timing code
require './timer'
timer = Timer.new
timer.start

Dir.chdir(File.dirname(__FILE__)) # This is here to ensure the working directory is in the correct place

total = 0

File.readlines('input.txt').each do |line|
  game_id, line_less_ids = parse_game_id(line)
  rounds = parse_rounds(line_less_ids)
  flag = true
  rounds.each do |round|
    flag = false unless check_counts(round)
  end
  total += game_id if flag
end

puts total

# Timing Code
timer.stop
