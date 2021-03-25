class Category < ActiveHash::Base
  include CsvHasher
  include ActiveHash::Associations
  arr = ["--", "ポップ", "アニメ・漫画", "科学", "宗教", "政治・経済・社会", "その他"]
  hashes = []
  i = 1
  arr.each do |a|
    hash = {id: i, option: "#{a}"}
    hashes << hash
    i+=1
  end
  self.data = hashes
  has_many :topics
end