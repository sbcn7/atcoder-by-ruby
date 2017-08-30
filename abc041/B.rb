# http://abc041.contest.atcoder.jp/tasks/abc041_b

puts gets.split.map(&:to_i).inject(1, :*) % (10**9 + 7)
