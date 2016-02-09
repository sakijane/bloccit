class Post < ActiveRecord::Base
  has_many :comments

  def spammy_title
    if id % 5 == 0
      "SPAM"
    else
      title
    end
  end
end
