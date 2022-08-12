require_relative 'user'
require_relative 'post'
require_relative 'comment'
require_relative 'like'

# Add users
first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')
third_user = User.create(name: 'John', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from USA.')
fourth_user = User.create(name: 'Jane', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Canada.')

# Add posts
first_post = Post.create(author: first_user, title: 'Hello', text: 'This is my first post')
second_post = Post.create(author: first_user, title: 'Hi again', text: 'I am still here...')
third_post = Post.create(author: first_user, title: 'Are you there?', text: 'I was waiting for you but I am tired')
fourth_post = Post.create(author: first_user, title: 'Bye!', text: 'I am gonna sleep now. Good bye!')

# Add comments
first_comment = Comment.create(author: second_user, text: 'Hello', post: first_post)
second_comment = Comment.create(author: second_user, text: 'Bye!', post: fourth_post)
third_comment = Comment.create(author: third_user, text: 'Hi budy', post: first_post)
fourth_comment = Comment.create(author: third_user, text: 'Bye bro!', post: fourth_post)
fifth_comment = Comment.create(author: fourth_user, text: 'Hey!', post: first_post)
sixth_comment = Comment.create(author: fourth_user, text: 'Bye, get rest!', post: fourth_post)
