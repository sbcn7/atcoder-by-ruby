# http://abc028.contest.atcoder.jp/tasks/abc028_c

numbers = gets.split.map(&:to_i)
sum_list = []

numbers.combination(3) { |three_nums| sum_list << three_nums.inject(:+) }
puts sum_list.uniq.sort.reverse[2]
