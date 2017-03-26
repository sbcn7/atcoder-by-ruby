# http://abc003.contest.atcoder.jp/tasks/abc003_4

# 引数の階乗を求める関数
def fact(num)
  (1..num).inject(1, :*)
end

R, C = gets.split.map(&:to_i)
X, Y = gets.split.map(&:to_i)
D, L = gets.split.map(&:to_i)

case1 = (R - X + 1) * (C - Y + 1)
case2 = fact(D + L) / (fact(D) * fact(L))

puts (case1 * case2) % (10**9 + 7)
