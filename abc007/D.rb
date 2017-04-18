# http://abc007.contest.atcoder.jp/tasks/abc007_4

A, B = gets.split.map(&:to_i)
count = 0

A.upto(B) do |i|
  count += 1 if i.to_s =~ /(4|9)/
end

puts count
