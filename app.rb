def calc_type
  puts "Which calculator would you like to use?\n (b)asic, (a)dvanced, b(m)i or (t)rip"
  calc = gets.chomp
  if calc == "b"
    puts "Which operation are you trying to do?\n (a)ddition, (s)ubtraction, (m)ultiplication or (d)ivision"
    operation = gets.chomp
    if operation == "a"
      opp = "add"
    elsif operation == "s"
      opp = "sub"
    elsif operation == "m"
      opp = "mult"
    elsif operation == "d"
      opp = "div"
    else
      "error"
    end
    puts "What is the first number you would like to #{opp}?"
    a = gets.chomp
    puts "What is the second number you would like to #{opp}?"
    b = gets.chomp
    def calculate(operator, a, b)
      if operator == "add"
        x = a + b
        puts "The answer is #{x}"
      elsif operator == "sub"
        x = a - b
        puts "The answer is #{x}"
      elsif operator == "mult"
        x = a * b
        puts "The answer is #{x}"
      elsif operator == "div"
        x = a / b
        puts "The answer is #{x}"
      end
    end

    answer = calculate(opp,a.to_i,b.to_i)
  elsif calc == "a"
    puts "Which operation are you trying to do?\n (p)ower or square (r)oot"
    operation = gets.chomp
    if operation == "p"
      opp = "power"
    elsif operation == "r"
      opp = "root"
    else
      "error"
    end
    puts "What is the number you would like to operate on?"
    a = gets.chomp
    puts "To what #{opp}?"
    b = gets.chomp
    def calculate(operator, a, b)
      if operator == "power"
        x = a ** b
        puts "The answer is #{x}"
      elsif operator == "root"
        x = a ** (1.0 / b)
        puts "The answer is #{x}"
      end
    end

    answer = calculate(opp,a.to_i,b.to_i)
  elsif calc == "m"
    puts "Imperial or Metric?\n (i)mperial or (m)etric"
    operation = gets.chomp
    if operation == "i"
      opp = "imp"
    elsif operation == "m"
      opp = "met"
    else
      "error"
    end
    puts "What is your weight?"
    a = gets.chomp
    puts "What is your height?"
    b = gets.chomp
    def calculate(operator, a, b)
      if operator == "imp"
        x = ((a.to_f/b.to_f)/b.to_f) * 703
        puts "Your BMI is #{x}kg/m^2"
      elsif operator == "met"
        x = (a.to_f/b.to_f)/b.to_f
        puts "Your BMI is #{x}kg/m^2"
      end
    end
    answer = calculate(opp,a.to_i,b.to_i)
  elsif calc == "t"
    puts "How far will you be travelling (miles)?"
    a = gets.chomp
    puts "What is the fuel efficiency of your car (MPG)?"
    b = gets.chomp
    puts "What is the cost per gallon of fuel (£)?"
    c = gets.chomp
    puts "How fast will you be going (mph)?"
    d = gets.chomp
    x = a.to_f / d.to_f
    puts "Your journey will take #{x} hours."
    if d.to_f > 60
      y = (d.to_f - 60) * 2
      if y < b.to_f
        i = b.to_f - y.to_f
        puts "Going at that speed your MPG will drop to #{i}"
        z = (a.to_f / i.to_f) * c.to_f
        puts "This journey will cost you £#{z}"
      else
        puts "You are going to fast, slow down, criminal"
      end
    else
      z = (a.to_f / b.to_f) * c.to_f
      puts "This journey will cost you £#{z}"
    end

  else
    puts "error"
  end
end

start = calc_type
