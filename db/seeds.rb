# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Test comment
# test comment 2
#test comment 3


Post.destroy_all
Comment.destroy_all

post1 = Post.create(subject:"Blog Post 1", text_body:"Lorem ipsum dolor si stet possim elaboraret usu.", photo_url:"http://xyz", author:"AnandM", date_created:"123")
post2 = Post.create(subject:"Blog Post 2", text_body:"At vis reque mazim, pro in. Cibo deseruisse eum ad.", photo_url:"http://xyz", author:"AnandZ", date_created:"13")

comment1 = Comment.create(text_body:"coment text XYZ1", photo_url:"http://xyz", author:"AnandG", date_created:"21", post:post1 )
# comment2 = Comment.create(text_body:"coment text XYZ2", photo_url:"http://xyz", author:"AnandL", date_created:"321", post:post1 )


comment3 = Comment.create(text_body:"coment text XYZ1", photo_url:"http://xyz", author:"AnandH", date_created:"31", post:post2 )
# comment4 = Comment.create(text_body:"coment text XYZ2", photo_url:"http://xyz", author:"AnandP", date_created:"321", post:post2 )
