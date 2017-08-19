# http://abc037.contest.atcoder.jp/tasks/abc037_a

A, B, C = gets.split.map(&:to_i)

puts C / [A, B].min + (C % [A, B].min) / [A, B].max
