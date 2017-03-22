# http://abc002.contest.atcoder.jp/tasks/abc002_4

N, M = gets.split.map(&:to_i)
rels = []

M.times {
  rels.push(gets.split.map(&:to_i))
}

facs = rels
flg = 0

while flg == 0 do
  facs_tmp = []
  facs.each { |fac|
    ((1..N).to_a - fac).each { |i|
      if fac.all? { |n|
        rels.include?([n, i].sort)
      } then
        facs_tmp.push(fac + [i])
      end
    }
  }
  if facs_tmp.empty? then
    flg = 1
  else
    facs_tmp = facs_tmp.map(&:sort).uniq
    facs = facs_tmp
  end
end

puts(facs.empty? ? 1 : facs[0].length)
