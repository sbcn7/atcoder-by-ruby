# http://abc029.contest.atcoder.jp/tasks/abc029_d

N = gets.chomp.split('').map(&:to_i).reverse
count = 1

(1..N.size - 1).each do |i|
  count_tmp = 0
  if N[i] == 1
    count_tmp += (N[i - 1] + 1)
  elsif N[i] > 1
    count_tmp += 11 * 10**(i - 1)
  end
  count += 11 * 10**(i - 1)
end

puts count
