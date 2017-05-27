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
# http://abc015.contest.atcoder.jp/tasks/abc015_1

A = gets
B = gets
puts A.length > B.length ? A : B
~~~