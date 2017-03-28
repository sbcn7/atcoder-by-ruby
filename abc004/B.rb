# http://abc004.contest.atcoder.jp/tasks/abc004_2

c = []
c.push(gets.split)
c.push(gets.split)
c.push(gets.split)
c.push(gets.split)

puts c.reverse.map { |item| item.reverse.join(' ') }
