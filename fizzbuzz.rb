# Christopher Brunsdon
# christopher@brunsdon.co.za
# Ruby Fizzbuzz

def fizzbuzz(i)
  result = %Q()
  result << 'fizz' if i.remainder(3).zero?
  result << 'buzz' if i.remainder(5).zero?
  result.empty? ? i.to_s : result
end

1.upto(100) do |n|
  puts fizzbuzz(n)
end
