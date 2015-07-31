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

post1 = Post.create(subject:"Test Subject", text_body:"Post Body XYZ", photo_url:"http://xyz", author:"AnandM", date_created:"123")

comment1 = Comment.create(text_body:"coment text XYZ", photo_url:"http://xyz", author:"AnandG", date_created:"321", post:post1 )
