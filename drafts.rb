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