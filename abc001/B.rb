# http://abc001.contest.atcoder.jp/tasks/abc001_2

km = gets.to_i / 1000.0

if km < 0.1 then
    vv = 0
elsif km <= 5 then
    vv = km * 10
elsif km <= 30 then
    vv = km + 50
elsif km <= 70 then
    vv = (km - 30) / 5 + 80
else
    vv = 89
end

puts(format('%02d', vv))
