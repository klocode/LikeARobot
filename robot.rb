class Robot

  attr_accessor :name, :height

  def initialize(name, height = 10)
    @name = name
    @height = height
  end

  def say_hi
    puts "Hi!"
  end

  def say_name
    puts "My name is #{name}!"
  end

end

bot = Robot.new("Bot")
bot.say_hi
bot.say_name

class BendingUnit < Robot

  def bend(objecttobend)
    puts "Bend #{objecttobend}!"
  end

end

bender = BendingUnit.new("Bender")
bender.bend("crow bar")

class ActorUnit < Robot

  def change_name(new_name)
    @name = new_name
  end
end

jack = ActorUnit.new("Jack")

jack.change_name("Jill")

# puts jack.inspect

our_class = %w(Kalea Nancy Dave Rob Laura David Phil Ben Kendrick Demetra Dave Laura Miguel Michael)

robots = []

our_class.each do |robo|
  robots << Robot.new(robo)
end

robots.each do |robot|
  puts robot.inspect
end


student_robot = our_class.map {|bott| Robot.new(bott)}

puts student_robot.inspect
