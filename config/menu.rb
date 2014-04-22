require 'colorize'

class Menu

  def run
   
    `top -o cpu -n 10`.colorize(:color => :white, :background => :red,)
  end

  def load_time
    puts `uptime`.colorize(:color => :magenta, :background => :white,)
  end


  def ip_adress
    puts "your ip address is: #{`ipconfig getifaddr en0`}".colorize(:color => :blue, :background => :white)
  end

  puts 'Welcome to my menu!'

end

Menu.new.ip_adress
Menu.new.load_time


