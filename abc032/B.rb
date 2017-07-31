# http://abc032.contest.atcoder.jp/tasks/abc032_b

s = gets.chomp
k = gets.to_i
ans = []

(0..(s.length - k)).each do |i|
  ans << s[i, k] unless ans.include?(s[i, k])
end

puts ans.length
