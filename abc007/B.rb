# http://abc007.contest.atcoder.jp/tasks/abc007_2

A = gets.chomp
alps = ('a'..'z').to_a

if A.size > 1
  puts A.chop
elsif A == 'a'
  puts '-1'
else
  puts alps[alps.index(A) - 1]
end
