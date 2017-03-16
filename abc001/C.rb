# http://abc001.contest.atcoder.jp/tasks/abc001_3

deg, dis = gets.split.map(&:to_i)
speed = (dis / 60.0).round(2)

if speed <= 0.2 then
    w = 0
elsif speed <= 1.5 then
    w = 1
elsif speed <= 3.3 then
    w = 2
elsif speed <= 5.4 then
    w = 3
elsif speed <= 7.9 then
    w = 4
elsif speed <= 10.7 then
    w = 5
elsif speed <= 13.8 then
    w = 6
elsif speed <= 17.1 then
    w = 7
elsif speed <= 20.7 then
    w = 8
elsif speed <= 24.4 then
    w = 9
elsif speed <= 28.4 then
    w = 10
elsif speed <= 32.6 then
    w = 11
else
    w = 12
end

first = 'N'*5 + 'E'*6 + 'S'*10 + 'W'*6 + 'N'*5
second = (' ' + 'N'*2 + ' ')*2 + (' ' + 'S'*2 + ' ')*4 + (' ' + 'N'*2 + ' ')*2
third = (' ' + 'E'*7)*2 + (' ' + 'W'*7)*2

idx = (deg / 112.5).ceil
puts(idx)
dir = (w == 0) ? 'C' : first[idx] + second[idx] + third[idx]

puts(dir.gsub(' ', '') + ' ' + w.to_s)
