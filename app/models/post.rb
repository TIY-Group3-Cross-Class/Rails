class Post < ActiveRecord::Base
  has_many :guesses
  belongs_to :user
end

