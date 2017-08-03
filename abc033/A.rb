# http://abc032.contest.atcoder.jp/tasks/abc032_c

N = gets.chomp
same = true

N.each_char { |c| same = false unless N[0] == c }
puts same ? 'SAME' : 'DIFFERENT'
