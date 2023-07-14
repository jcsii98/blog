require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should save a valid article" do 
    article = Article.new
    article.name = "Article name"
    article.body = "Some body once told me"
    article.title ="Shrek soundtrack is cool"
    assert article.save, "Article saved"
  end
  test "should not save an invalid article" do 
    article = Article.new
    article.body = "Some body once told me"
    
    assert_not article.save, "Invalid article saved"
  end
end
