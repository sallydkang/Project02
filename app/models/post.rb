class Post < ActiveRecord::Base
  belongs_to :journal
  dragonfly_accessor :image 
end
