# http://abc044.contest.atcoder.jp/tasks/abc044_b

w = gets.chomp.split('')

puts w.all? { |c| w.count(c).even? } ? 'Yes' : 'No'
