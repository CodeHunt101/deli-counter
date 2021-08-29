def line(current_people)
  if current_people == []
    puts("The line is currently empty.")
  else
    positions = current_people.map{|name| "#{current_people.index(name) + 1}. #{name}"}
    puts "The line is currently: #{positions.join(" ")}"
  end
end

def take_a_number(current_people, new_person)
  current_people.push(new_person)
  puts "Welcome, #{new_person}. You are number #{current_people.size} in line."
end

def now_serving(current_people)
  if current_people == []
    puts("There is nobody waiting to be served!")
  else
    puts "Currently serving #{current_people[0]}."
    current_people.shift
  end
end