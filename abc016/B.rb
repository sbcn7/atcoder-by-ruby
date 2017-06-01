# http://abc016.contest.atcoder.jp/tasks/abc016_2

A, B, C = gets.split.map(&:to_i)
add = A + B
sub = A - B

if add == C && sub == C
  puts '?'
elsif add == C
  puts '+'
elsif sub == C
  puts '-'
else
  puts '!'
end
