class Comment < ActiveRecord::Base
  attr_accessible :content
  belongs_to :post
  has_many :links
end
