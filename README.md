# atcoder-by-ruby
AtCoderの過去問をRubyで解きます

## ルール
- 1日1コミット
  - 1日1問でなくても可
- 正答するまでは他の人の解答を見ない
- 正答後は他の人の解答を参考にリファクタリングする

## 心が折れた問題リスト
- [abc004_D](http://abc004.contest.atcoder.jp/tasks/abc004_4)の満点解
  - [解説](https://www.slideshare.net/chokudai/abc004)を読んでも解けない...
  - もっと簡単な問題で動的計画法の実装を練習してみる？

## memo

~~~
N, T = gets.split.map(&:to_i)
A = Array.new(N) { gets.to_i }
count = T

(1..N - 1).each do |i|
  diff = A[i] - A[i - 1]
  count += diff < T ? diff : T
end

puts count
~~~