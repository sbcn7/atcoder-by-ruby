# http://abc030.contest.atcoder.jp/tasks/abc030_a

A, B, C, D = gets.split.map(&:to_i)

takahashi = B / A.to_f
aoki = D / C.to_f

if takahashi > aoki
  puts 'TAKAHASHI'
elsif aoki > takahashi
  puts 'AOKI'
else
  puts 'DRAW'
end
