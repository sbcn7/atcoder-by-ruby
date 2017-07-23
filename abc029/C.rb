# http://abc029.contest.atcoder.jp/tasks/abc029_c

N = gets.to_i

['a', 'b', 'c'].repeated_permutation(N) { |str| puts str.join }
