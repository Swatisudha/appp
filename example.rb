 array=[1,2,3,4]
 puts array

 def x
 	2+4
 end
 puts x()
i=0
 5.times do 
if(i>1 && i<5)
 puts i
 else
 puts "no"	
 end
 i+=1
end

 i=[1,2,3,4]
 for array in i
 	puts i
 	end


 	puts 'RubyMonk'.length

 


puts"_______________________________"
addition=lambda{|a,b| a+b}
puts addition.call(5,5)
addition=lambda{|a,b| a+b}
puts addition.call(4,5)
addition=lambda do |a,b|
	a+b
end
puts addition.call(6,7)
addition=lambda do |a,b|; a + b;
end
puts addition.call(7,8)


puts"************************************"
short = ->(a,b) {a+b}
puts short.call(3,3)
 long=lambda {|a,b| a+b}
 puts long.call(7,7)
 def know(object)
 	object.class
 end
 puts 1.is_a?(know(1))
 puts 'hi'.is_a?(know('hi'))



  class Array
  def initialize(name)    
@name=name.capitalize
end
def salute
	puts "Hello #{@name}!"
end
end
g=Array.new("world")
g.salute

puts "-------------------------"

class A
	def initialize(length,breadth)
		@length=length
		@breadth=breadth

end
def perimeter
	2*(@length+@breadth)
	 
end
end
a=A.new(5,6)
puts a.perimeter


puts "&&&&&&&&&&&&&&&&"
print "Enter a number:"
num1 = gets.to_i
print "Enter another number:"
num2 = gets.to_i
puts num1.to_s + " + " + num2.to_s + " = " + (num1+num2).to_s

puts "------------------------------------------------"
    class Bicycle  
      attr_reader :gears, :wheels, :seats  
      def initialize(gears = 1)  
        @wheels = 2  
        @seats = 1  
        @gears = gears  
      end  
    end  
      
    class Tandem < Bicycle  
      def initialize(gears)  
        super  
        @seats = 2  
      end  
    end  
    t = Tandem.new(2)  
    puts t.gears  
    puts t.wheels  
    puts t.seats  
    b = Bicycle.new  
    puts b.gears  
    puts b.wheels  
    puts b.seats  

        class OR  
      def mtd  
        puts "First definition of method mtd"  
      end  
      def mtd  
        puts "Second definition of method mtd"  
      end  
    end  
    OR.new.mtd  

    puts"------------------------------------"
    class AbstractKlass  
  def welcome  
    puts "#{hello} #{name}"  
  end  
end  
  
# A concrete class  
class ConcreteKlass < AbstractKlass  
  def hello; "Hello"; end  
  def name; "Ruby students"; end  
end  
ConcreteKlass.new.welcome

puts"--------------------------------------"
class Y
	def x
		puts "#{hi} #{name}"
	end
end
class B < Y
	def hi;"bye";end
	def name;"ruby"; end
end
B.new.x

puts "]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]"

class Rectangle  
  def initialize(*args)  
    if args.size < 2  || args.size > 3  
      # modify this to raise exception, later  
      puts 'This method takes either 2 or 3 arguments'  
    else  
      if args.size == 2  
        puts 'Two arguments'  
      else  
        puts 'Three arguments'  
      end  
    end  
  end  
end  
Rectangle.new([10, 23], 4, 10)  
Rectangle.new([10, 23], [14, 13]) 
Rectangle.new([11,22],5,6,7)

puts "+++++++++++++++++++++++++++++++++"
class Item
  def initialize(item_name, quantity)
    @item_name = item_name
    @quantity = quantity
  end
  
  def show
    puts @item_name
    puts @quantity
  end
end

Item.new("tv",1).show
Item.new("fridge",1).show


puts "======================================"
class Item
  def initialize(description, color)
    @description = description
    @color = color
  end
  
	def description
    puts "#{@color} #{@description}"
  end
  
end
Item.new("mini","red").description

puts"/////////////////////////"

class A
	attr_reader :item_name
	def initialize(item_name)
		@item_name=item_name
	end
end
a=A.new("Hi")
puts a.item_name

puts "-----------------------------"

class Z
	def initialize(item_name)
		@item_name=item_name
	end
	def show
		puts "Hi '#{self}'"
	end
	def to_s
		puts "Item: #{@item_name}"
	end
	end
	Z.new("silence").show
Z.new("silence").to_s

puts [1,2]==[1,2]

puts "______________________________"

e, t, u=[[1,3],[5,6],[7,8]]
p e
p t
p u

def a
	[34,true]
end
x,y=a
p x
p y

[[1, 2, 3, 4], [42, 43]].each { |a, b| puts "#{a} #{b}" }

def a(*args)
	[args.first, args.last]
end
p a(1,2,3,4,5)

def a(c,b)
	c+b
end
puts a(1,2)

puts Hash[1,2]
puts Hash[[[3,4],[2,4]]]
p (Array.instance_methods-Object.methods).count
puts [2,3,4,5,6].count{|a| a%2==0}

p [nil, 4, nil, 8, 15, 16, nil, 23, 42, nil].compact
p [4, 8, 15, 16, 23, 42].zip([42, 23, 16, 15, 8])

class Stack
	def initialize
	@store=Array.new
end
def pop
	@store.pop
end
def push(element)
	@store.push(element)
	self
end
def size
	@store.size
end
end
["xkcd", 9, Object.new, ["a", "clean", "array"], {:a => "hash"}].each do |e|
  puts e.class
end

a=[[1,2],[3,4],[5,6]]
p a.transpose

begin
	eval "40/0"
rescue ZeroDivisionError => error
	p error
end

def zen
  begin
    p eval "(40 + 2) / 2"
    p eval "(40 + 2) \ 2"
  rescue SyntaxError => error
    puts error.backtrace
  end
end

zen

def zen?(object)
  if object.to_i == 42
    200
  else
    400
  end
end

if zen?(42) == 200
  puts "Master loves you as he loves Jacob."
end

puts "---------------------------------------------"

floor = [["blank", "blank", "blank"],
         ["gummy", "blank", "blank"],
         ["blank", "blank", "blank"]]

attempts = 0
candy = nil
catch(:found) do
	floor.each do |row|
  	row.each do |tile|
      attempts += 1
    	if tile == "jawbreaker" || tile == "gummy"
        candy = tile
        throw(:found)
      end
  	end
	end
end
puts candy
puts attempts

puts [:hi,:i,:m].inspect

def describe(something)
  puts "I am a: #{something.class} and I look like: #{something}"
end

describe(1_024)
describe(1.2e-30)

	module Somewhere
  class Hidden
    $everywhere = "global love"
  end
end

module Somewhere
  class CloseTo
    def the_heart
      $everywhere
    end
  end
end

puts Somewhere::CloseTo.new.the_heart

p [2,4].each

p [1,2,3,4,5,6].each {|e| puts e%2==0}


[1,2,3,4,5].inject(0) do |accumulator,iterated|
	 accumulator+=iterated
p accumulator
end

 enum = [0, -1, 3, 2, 1, 3].each_with_index
p enum.select { |element, index| element < index }

p [1,2,23,4,5].inject({}) {|a,i| a.update(i=>i)}

puts "_______________________________________________"
def a(array,default=nil)
	accumulator=default || array[0]
	array.each do |element|
		accumulator=accumulator + element
	end
	accumulator
end
p a([1,2,3,4,5])

p [1,2,3,5].any?{|e| e.class==String}
p [1,2,3,4,5]|[1]

[1,2,3].each do |number|
	puts number
end
 p (10/2).class
 p ("swati").class
 puts 3/2.0

 def c
  p "I'm in C. You know who called me?"
  p caller
end

def b
  p c
end

def a
 p b
end

p a
require 'logger'
logger = Logger.new($stdout)
logger.warn("This is a warning")
logger.info("This is an info")


puts"+++++++++++++++++++++++++++++++++++++++"
class Food
end

class Soup < Food
end
class IceCream < Food
end
class ChineseGreenBeans < Food
end

class DeliveryTray
  FOOD_DISH_MAPPING = {
    Soup => "soup bowl",
    IceCream => "ice cream bowl",
    ChineseGreenBeans => "serving plate"
  }

  def initialize
    @dishes_needed = {}
  end

  def add(food)
    dish = FOOD_DISH_MAPPING[food.class]
    @dishes_needed[dish] = (@dishes_needed[dish] || 0) + 1
  end

  def dishes_needed
    return "None." if @dishes_needed.empty?

    @dishes_needed.map {|dish_name, count| "#{count} #{dish_name}" }.join(", ")
  end
end


d=DeliveryTray.new
d.add Soup.new; d.add Soup.new
d.add IceCream.new
puts d.dishes_needed # should be "2 soup bowl, 1 ice cream bowl"

class Object
  def metaclass
    class << self
      self
    end
  end
end


a=Object.new
p a.metaclass.new

