# http://abc002.contest.atcoder.jp/tasks/abc002_2

str = gets
del_characters = %w[a i u e o]

del_characters.each { |c|
  str = str.delete(c)
}

puts(str)
