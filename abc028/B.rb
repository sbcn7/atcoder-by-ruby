# http://abc028.contest.atcoder.jp/tasks/abc028_b

S = gets.chomp
targets = %w(A B C D E F)
ans = []

targets.each { |target| ans << S.count(target) }
puts ans.join(' ')
