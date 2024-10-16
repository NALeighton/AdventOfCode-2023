# frozen_string_literal: true

class Timer
  def initialize
    @start_time = 0
    @stop_time = 0
  end

  def start
    @start_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  end

  def stop
    @stop_time = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    puts '-----------'
    puts "#{((@stop_time - @start_time) * 1000).round(6)} ms"
  end
end
