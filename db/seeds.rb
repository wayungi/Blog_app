# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


   u1 = User.create(name: 'Micheal', photo: 'https://picsum.photos/200', bio: 'Instructor and GADS.', email: 'micheal@yahoo.comm', password: '123456')
   u2 = User.create(name: 'Erisa', photo: 'https://picsum.photos/200', bio: 'Teacher at Mukon Parents.', email: 'erisa@gmail.com', password: '123456')
   u3 = User.create(name: 'Okello', photo: 'https://picsum.photos/200', bio: 'GIT start programmer', email: 'okello@hotmail.com', password: '123456')
   u4 = User.create(name: 'Musasizi', photo: 'https://picsum.photos/200', bio: 'Factory buildet', email: 'musasizi@outlook.com',password: '123456')
   u5 = User.create(name: 'Bwowe', photo: 'https://picsum.photos/200', bio: 'MUK guild president', email: 'bwowe@muk.com', password: '123456')
   u6 = User.create(name: 'Mwase', photo: 'https://picsum.photos/200', bio: 'Tour marketeer', email: 'mwase@gmail.com', password: '123456')
   
   
   p1 = Post.create(author: u1.id, title: 'Google cloud is cool', text: 'Come learn devOps')
   p2 = Post.create(author: u1.id, title: 'Scholarship offer', text: 'Come study for free here')
   p3 = Post.create(author: u1.id, title: 'I learn node', text: 'Node is very marketable')
   p4 = Post.create(author: u1.id, title: 'I want a house', text: 'I dont have money to buy one yet')
   p5 = Post.create(author: u3.id, title: 'let me laught', text: 'Whats funny?')
   p6 = Post.create(author: u6.id, title: 'Kondevillers', text: 'Tour offers comming')
   p7 = Post.create(author: u5.id, title: 'MuK politics', text: 'Now they also rig votes')
   p8 = Post.create(author: u6.id, title: 'Tusubira villas', text: 'Come lodge here for a weekend')
   
   c1 =Comment.create(post: p1.id, author: u2, text: 'Is this true Micheal?' )
   c2 = Comment.create(post: p2.id, author: u2, text: 'When is the offer beginning' )
   c3 = Comment.create(post: p1.id, author: u3, text: 'When is the next scholarship' )
   c4 = Comment.create(post: p1.id, author: u4, text: 'Do u find a job when u finish?' )
   c5 = Comment.create(post: p1.id, author: u5, text: 'I love devOps' )
   c6 = Comment.create(post: p1.id, author: u6, text: 'But getting the job is hard' )

   c7 = Comment.create(post: p6.id, author: u4, text: 'I will book tomorrow' )
   c8 = Comment.create(post: p7.id, author: u5, text: 'I dont trust politics country wide' )
   c9 = Comment.create(post: p8.id, author: u6, text: 'What are your price ranges' )
   
   
   Like.create(author: u2.id, post:p1.id)
   Like.create(author: u3.id, post:p1.id)
   Like.create(author: u4.id, post:p1.id)
   Like.create(author: u5.id, post:p1.id)
   Like.create(author: u6.id, post:p1.id)
   Like.create(author: u2.id, post:p2.id)
   Like.create(author: u3.id, post:p1.id)
   Like.create(author: u4.id, post:p1.id)
   Like.create(author: u1.id, post:p8.id)
   Like.create(author: u5.id, post:p8.id)
   Like.create(author: u6.id, post:p7.id)
   Like.create(author: u3.id, post:p6.id)
   Like.create(author: u4.id, post:p5.id)
   

