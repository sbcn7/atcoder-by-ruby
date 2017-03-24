# http://abc003.contest.atcoder.jp/tasks/abc003_2

S = gets.chars
T = gets.chars
judge = []

S.each_index do |idx|
  if S[idx] == '@' then
    judge.push(/[@atcoder]/ =~ T[idx])
  else
    judge.push(S[idx] == T[idx])
  end
end

puts judge.all? ? "You can win" : "You will lose"
