# http://abc008.contest.atcoder.jp/tasks/abc008_2

N = gets.to_i
S = []

N.times do
  S.push gets.chomp
end

puts S.group_by { |x| x }.sort_by { |_, v| -v.size }[0][0]
