# http://abc032.contest.atcoder.jp/tasks/abc032_c

N, K = gets.split.map(&:to_i)
s = Array.new(N) { gets.to_i }
max_size = 0

N.times do |i|
  i.times do |j|
    max_size = [max_size, i - j + 1 ].max if s[j..i].inject(:*) <= K
  end
end

puts max_size
