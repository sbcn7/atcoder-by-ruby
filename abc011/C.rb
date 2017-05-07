# http://abc011.contest.atcoder.jp/tasks/abc011_3

n = gets.to_i
NG = Array.new(3) { gets.to_i }

unless NG.include?(n)
  100.times do
    x = [3, 2, 1].find { |a| !NG.include?(n - a) }
    break if x.nil?
    n -= x
  end
end

puts n <= 0 ? 'YES' : 'NO'
