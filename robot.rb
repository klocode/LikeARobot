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

  def method_missing(m, *args, &block)
    puts "Does Not Compute: There's no method called #{m} here -- please try again."
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

kendrick = ActorUnit.new("Kendrick")
kendrick.flip #testing if I call an undefined method

kendrick.change_name("Ken")

########################ADVENTURE##############################

our_class = %w(Kalea Nancy Dave Rob Laura David Phil Ben Kendrick Demetra Dave Laura Miguel Michael)

robots = []

#using each method to convert students to robots
our_class.each do |robo|
  robots << Robot.new(robo)
end

#making it look pretty because I do not know another way to make the output nice
robots.each do |robot|
  puts robot.inspect
end

#using enumerator to turn students into robots
student_robot = our_class.map {|bott| Robot.new(bott)}

puts student_robot.inspect

###########################EPIC#################################

robotclasses = [Robot, BendingUnit, ActorUnit]

changed_robot = our_class.map { |stu| robotclasses.sample.new(stu) }

puts changed_robot.inspect
