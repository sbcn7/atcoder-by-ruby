# http://abc043.contest.atcoder.jp/assignments

ans = []

gets.chomp.each_char do |c|
  ans.push 0 if c == '0'
  ans.push 1 if c == '1'
  ans.pop if c == 'B'
end

puts ans.join
