puts "Begin seed"
User.destroy_all
Tweet.destroy_all
Comment.destroy_all

user = User.create(email: "test@mail.com", password: "123456", username: "test", name: "test")
user1 = User.create(email: "test1@mail.com", password: "123456", username: "test1", name: "test1")

tweet = Tweet.create(user: user, body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque interdum rutrum sodales. Nullam mattis fermentum libero, non volutpat.")
tweet1 = Tweet.create(user: user, body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque interdum rutrum sodales. Nullam mattis fermentum libero, non volutpat.")
tweet2 = Tweet.create(user: user1, body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque interdum rutrum sodales. Nullam mattis fermentum libero, non volutpat.")

comment = Comment.create(user: user, tweet: tweet, body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque interdum rutrum sodales. Nullam mattis fermentum libero, non volutpat.")
comment = Comment.create(user: user, tweet: tweet1, body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque interdum rutrum sodales. Nullam mattis fermentum libero, non volutpat.")
comment = Comment.create(user: user1, tweet: tweet2, body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque interdum rutrum sodales. Nullam mattis fermentum libero, non volutpat.")

puts "End seed"