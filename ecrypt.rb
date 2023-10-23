require 'digest'

puts "What phrase do yoiu want to encrypt?"
string = STDIN.gets.chomp

puts "With what method do you want to enrypt your phrase:"
puts "1. MD5"
puts "2. SHA1"
puts "3. SHA2"

encrypt_method = STDIN.gets.to_i

until encrypt_method.between?(1, 3)
  puts "Please choose 1, 2 or 3"
  encrypt_method = STDIN.gets.to_i
end

puts "That is the result:"

case encrypt_method
when 1 then puts Digest::MD5.hexdigest(string)
when 2 then puts Digest::SHA1.hexdigest(string)
when 3 then puts Digest::SHA2.hexdigest(string)
end

