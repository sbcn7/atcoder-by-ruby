# http://abc009.contest.atcoder.jp/tasks/abc009_4

K, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)

(M - K).times do |n|
  xor_result = 0
  C.each_index do |idx|
    xor_result = xor_result ^ (C[idx] & A[n + K - (idx + 1)])
  end
  A.push xor_result
end

puts A[M - 1]
