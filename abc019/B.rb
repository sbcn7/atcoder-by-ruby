# http://abc019.contest.atcoder.jp/tasks/abc019_2

s = gets.chomp
count = 1
before_c = ''

s.each_char do |c|
  if before_c == c
    count += 1
  else
    print "#{before_c}#{count}" unless before_c.empty?
    before_c = c
    count = 1
  end
end

puts "#{before_c}#{count}"
