def random_word
  (1..(5..15).to_a.sample).map{ ('a'..'z').to_a.sample }.join
end

100.times do
  Post.create(name: random_word, public: [0,1].sample, ip_address: '70.28.26.179')
end
