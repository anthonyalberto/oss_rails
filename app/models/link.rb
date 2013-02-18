class Link < ActiveRecord::Base
  attr_accessible :content
  belongs_to :comment
end
