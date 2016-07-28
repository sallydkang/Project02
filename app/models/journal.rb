class Journal < ActiveRecord::Base
  belongs_to :user
  has_many :posts
  dragonfly_accessor :image 
  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
  end
end
