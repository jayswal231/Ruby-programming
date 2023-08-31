# Q1. Display current date and time
# require 'date'
# date_time = DateTime.now
# date_times = date_time.strftime "%d/%m/%Y %H:%M"
# puts "current date and time is :"+date_times


# Q2. method to pass multiple value
# def hello (*var)
#     puts "the length is : #{var.length}"
#     for i in 0..var.length
#         puts "#{var[i]}"
#     end
# end
# hello "3","4","5"


#-------- Block------------
# def test
#     puts "This is a method"
#     yield 2
#     puts " This is method-2"
#     yield
# end
# test {|i|
#     puts " this is a block#{i}"
# }

# BEGIN {
#     puts "This is beggining statement"
# }
# END {
#     puts "This is end statement"
# }
# puts "This is main"


# #----------hash----------
# new_hash = {
#     "1"=>"mukesh",
#     "2"=>"ram",
#     "3"=>"shyam"
# }
# puts new_hash["2"]


# #-------user-input----
# print "enter your age :"
# user = gets.chomp
# puts "your name is #{user}"


#------file read-----
# file = File.open("new.txt")
# if file
#     content = file.read()
#     puts content

# else
#     puts "file unable to open"
# file.close
# end

  
#----class----
# class Car
#     def initialize(s,f)   
#         @speed, @fuel = s,f
#     end 

#     def speed
#         puts "find speed details"
#         return @speed
#     end
    
#     def fuel
#         puts "check fuel"
#         return @fuel
#     end
# end

# obj1 = Car.new(10,70)
# puts obj1.speed
# puts obj1.fuel


# class Home
#     #setter
#     attr_writer:name,:age
#     #getter
#     attr_reader:name,:age

#     def to_s
#         return "the name and age: #{name}, #{age}"
#     end
# end
# o=Home.new
# o.name="mukesh"
# o.age="23"

# puts o.name
# puts o.age
# puts o

#-----inheritance-----
# class College
#     attr_accessor:name,:place  #setter and getter both in one
#     def initialize(name,place)
#         @name=name
#         @place=place
#     end
# end

# class Student < College
#     attr_accessor:faculty
#     def details
#         return "welcome"
#     end
# end

# st = Student.new("himalaya","lalitpur")
# puts st.inspect
# puts st.details

# ---freeze---
class Data
    attr_accessor:name,:age
    def initialize(n,a)
        @name=n
        @age=a
    end
end

dt= Data.new("mukesh",23)
puts dt.name
puts dt.age

dt.freeze
if (dt.frozen?)
    puts "data is frozen"
else
    puts "data is not frozen"
end
