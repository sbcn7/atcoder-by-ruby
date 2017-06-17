# http://abc019.contest.atcoder.jp/tasks/abc019_3

N = gets.to_i
a = gets.split.map(&:to_i)
odd_list = []

a.each do |x|
  while x.even?
    x /= 2
  end
  odd_list << x
end

puts odd_list.uniq.length
