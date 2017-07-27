# http://abc031.contest.atcoder.jp/tasks/abc031_b

L, H = gets.split.map(&:to_i)
N = gets.to_i
A = Array.new(N) { gets.to_i }

A.each do |a|
  if a > H
    puts -1
  elsif a < L
    puts L - a
  else
    puts 0
  end
end
