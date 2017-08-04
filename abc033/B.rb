# http://abc033.contest.atcoder.jp/tasks/abc033_b

N = gets.to_i
S_P = Array.new(N) { gets.chomp.split }

population = S_P.transpose[1].map(&:+)

S_P.each_index do |i|
  ans_idx = i if S_P[i][1].to_i * 2 >= population
end

puts ans_idx.nil? ? 'atcoder' : S_P[ans_idx][0]
