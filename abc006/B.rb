# http://abc006.contest.atcoder.jp/tasks/abc006_2

n = gets.to_i
@memo = Array.new(n)

def tori(i)
  if i < 2
    return 0
  elsif i == 2
    return 1
  else
    @memo[i - 3] = tori(i - 3) if @memo[i - 3].nil?
    @memo[i - 2] = tori(i - 2) if @memo[i - 2].nil?
    @memo[i - 1] = tori(i - 1) if @memo[i - 1].nil?
    @memo[i] = @memo[i - 3] + @memo[i - 2] + @memo[i - 1]
    return @memo[i]
  end
end

puts tori(n - 1) % 10007
