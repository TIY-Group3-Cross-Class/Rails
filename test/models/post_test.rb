require 'test_helper'

class PostTest < ActiveSupport::TestCase
  
 test " that a post can have a guess " do
    post = posts(:kitten_post)
    assert post.guesses
  end
end
