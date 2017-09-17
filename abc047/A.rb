# http://abc047.contest.atcoder.jp/tasks/abc047_a

abc = gets.split.map(&:to_i)

puts abc.inject(:+) == abc.max * 2 ? 'Yes' : 'No'
