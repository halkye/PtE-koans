#Pytania:

# regexpy (about_regular_expressions)
# self (about_methods)
# < i :: (about_constants)
# :coś (about_control_statements)





begin
  {}.fetch(:a)
rescue => exc
  puts "\nklasa: #{exc.class}"
  puts "\nmessage: #{exc.message}"
  puts "\n===\n"
  puts "\ninspect: #{exc.inspect}"
  puts "\nancestors: #{exc.class.ancestors}"
end


class Divider
  class BigDickError < StandardError
  end

  BigDickError = Class.new(StandardError)

  def div(a,b)
    #a / b
    a.send(:/, b)
  rescue => exc
    puts  "\n\n#{BigDickError.class}\n\n"
    raise BigDickError, exc.message
    #raise Klasa, message
  end
end

d = Divider.new
d.div("chuj", 0)

def dupa(a: , b:, c:, d: 5)

end





dupa(c: 4, b: 2, a: 3)
keyword arguments


something

if something
  1
else
  2
end




def my_global_method(a,b)
  a + b
end

begin
  my_global_method
rescue => exception
  puts exception.class
  puts exception.message
  if exception.message.match(/wrong number of arguments/)
    puts "MACZUJE"
  else
    puts "NIE MACZUJE"
  end
end


def method_with_explicit_return
    :a_non_return_value
    :another_non_return_value
end

C = "top level"

class AboutConstants 

  C = "nested"
  puts C
  puts ::C
end

def test_if_then_else_statements
    if true
      result = :true_value
    else
      result = :false_value
    end
    puts result
end

def test_if_then_statements
    result = :default_value
    if true
      result = :true_value
    end
end



class A
  def abc
    dodaj obiekt
    return self
  end

  def m1
    m089
  end

  private

  def m089
    to_s
  end
end

class MySpecialError < RuntimeError
  end

    result = nil
    begin
      fail "Oops"
    rescue StandardError => ex
      result = :exception_handled
    end


module Payments
  class Transaction
  end
end

Payments::Transaction


def count_lines(file_name)
    file = open(file_name)
    count = 0
    while file.gets
      count += 1
    end
    count
  ensure
    file.close if file
  end

def count_lines2(file_name)
    file_sandwich(file_name) do |file|
      count = 0
      while file.gets
        count += 1
      end
      count
    end
  end

  def test_counting_lines2
    assert_equal 4, count_lines2("example_file.txt")
  end  