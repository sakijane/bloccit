include RandomData

50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

#1.times do
  Post.find_or_create_by(title: "This is a unique title", body: "This is unique content") do |post|
    post.Comment = "This is a unique comment"
  end
#end
#  Post.find_or_create_by!(
#    title: "This is a unique title",
#    body: "This is unique content"
#  )
#end
#post = Post.find_or_create_by!(
#  title: "This is a unique title",
#  body: "This is unique content"
#)

#1.times do
#  Comment.find_or_create_by!(
#    post: post,
#    body: "This is a unique comment"
#  )
#end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
