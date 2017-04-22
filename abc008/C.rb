# http://abc008.contest.atcoder.jp/tasks/abc008_3

def count_front(coins)
  status = Array.new(coins.size, 0)
  coins.each_index do |idx1|
    coins.each_index do |idx2|
      status[idx2] += 1 if coins[idx2] % coins[idx1] == 0 && idx2 > idx1
    end
  end
  return status.count { |s| s % 2 == 0 }
end

N = gets.to_i
C = Array.new(N) { gets.to_i }

count = 0

C.permutation.each do |coins|
  count += count_front(coins)
end

n = (1..N).inject(1,:*).to_f

puts format "%.12f", count / n
