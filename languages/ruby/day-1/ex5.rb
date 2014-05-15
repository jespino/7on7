num = rand(10)
answer = -1

until num == answer do
    answer = Integer(gets.chomp)
    if num > answer then
        puts "Too low"
    end
    if num < answer then
        puts "Too high"
    end
end

puts "You win"
