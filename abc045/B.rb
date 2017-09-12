# http://abc045.contest.atcoder.jp/tasks/abc045_b

sa = gets.chomp.split('')
sb = gets.chomp.split('')
sc = gets.chomp.split('')
target = 'a'

while !target.nil? do
  case target
  when 'a' then
    ans = 'A' if sa.length.zero?
    target = sa.shift
  when 'b' then
    ans = 'B' if sb.length.zero?
    target = sb.shift
  when 'c' then
    ans = 'C' if sc.length.zero?
    target = sc.shift
  end
end

puts ans
