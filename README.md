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
M, N = gets.split.map(&:to_i)
rels = Array.new(N) { gets.split.map(&:to_i) }

def get_friend_list(rels, person)
  friend_list =[]

  rels.each do |person_a, person_b|
    friend_list << person_a if person == person_b
    friend_list << person_b if person == person_a
  end

  friend_list.uniq
end

(1..M).each do |me|
  friend_list = get_friend_list(rels, me)

  friend_s_friend_list = []
  friend_list.each { |friend| friend_s_friend_list.concat get_friend_list(rels, friend) }

  puts (friend_s_friend_list - friend_list - [me]).size
end