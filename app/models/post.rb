class Post < ActiveRecord::Base
  has_many :guesses
  has_one :answer
  belongs_to :user
  has_one :solution 
end
