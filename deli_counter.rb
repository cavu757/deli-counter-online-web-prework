class Deli
@@ticket_number=1

def line (deli)
  if deli.length == 0 
    puts "The line is currently empty."
  else
    line_list = ""
    deli.each_with_index do |name, index|
      line_list += " #{index+1}. #{name}"
    end
    puts "The line is currently:" + line_list
  end
end

def take_a_number(deli)
  deli.push(@@ticket_number)
  puts "Welcome, your ticket number is " + @@ticket_number.to_s + " and you are " + deli.count.to_s + " in line."
end
  
def now_serving(deli)
  if deli.length == 0 
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving " + deli.shift + "."
  end
end

end 

new_deli = Deli.new 
line = new_deli.take_a_number([])
