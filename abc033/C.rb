# http://abc033.contest.atcoder.jp/tasks/abc033_c

puts gets.chomp.split('+').count { |block| !block.include?('0') }
