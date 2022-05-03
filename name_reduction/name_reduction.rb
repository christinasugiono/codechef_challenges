t = gets.chomp.to_i

results = []

for i in 1..t
  parents = gets.chomp.gsub(" ", "").chars
  children = []
  result = "YES"

  n = gets.chomp.to_i
  for i in 1..n
    children << gets.chomp.gsub(" ", "")
  end
  children = children.join.chars

  children.each do |char|
    unless parents.include? char
      result = "NO"
      break
    end
  end

  results << result
end

results.each { |result| puts result }
