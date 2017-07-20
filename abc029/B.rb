# http://abc029.contest.atcoder.jp/tasks/abc029_b

S = Array.new(12) { gets.chomp }

puts S.select { |s| s.include?('r') }.count
