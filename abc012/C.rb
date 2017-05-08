# http://abc012.contest.atcoder.jp/tasks/abc012_3

n = 2025 - gets.to_i

[*1..9].repeated_permutation(2) do |i, j|
    puts "#{i} x #{j}" if i * j == n
end
