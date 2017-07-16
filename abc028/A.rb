# http://abc028.contest.atcoder.jp/tasks/abc028_a

N = gets.to_i

if N < 60
  puts 'Bad'
elsif N < 90
  puts 'Good'
elsif N < 100
  puts 'Great'
else
  puts 'Perfect'
end