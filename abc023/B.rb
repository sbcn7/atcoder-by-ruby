# http://abc023.contest.atcoder.jp/tasks/abc023_b

N = gets.to_i
S = gets.chomp
ans = -1

if N.odd?
  s = 'b'
  (1..((N - 1) / 2)).each do |i|
    s = 'a' + s + 'c' if (i % 3) == 1
    s = 'c' + s + 'a' if (i % 3) == 2
    s = 'b' + s + 'b' if (i % 3) == 0
  end
  ans = (N - 1) / 2 if S == s
end

puts ans
