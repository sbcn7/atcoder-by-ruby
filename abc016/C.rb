# http://abc016.contest.atcoder.jp/tasks/abc016_3

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

  puts (friend_s_friend_list - friend_list - [me]).uniq.size
end
