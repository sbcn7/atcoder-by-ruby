# http://abc034.contest.atcoder.jp/tasks/abc034_c

def fact(num)
  (1..num).inject(1, :*)
end

W, H = gets.split.map(&:to_i)
w = W - 1
h = H - 1

puts fact(w + h) / (fact(w) * fact(h)) % 1_000_000_007
