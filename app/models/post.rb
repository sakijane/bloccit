class Post < ActiveRecord::Base
  has_many :comments

  def spam_title
    id % 5 == 0 ? "SPAM" : title
  end
end

# post.each_with_index do { |x| x / 5 == Integer }
#   post.title: "SPAM"
#
