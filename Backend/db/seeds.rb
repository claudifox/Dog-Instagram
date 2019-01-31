# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all

posts = [
  {image: "https://i.ebayimg.com/00/s/MTAyNFgxMDI0/z/VFYAAOSwM~tacx5T/$_86.JPG", title: "Weimaraner Puppy!", description: "Look at those blue eyes!", like_count: 0},
  {image: "https://i.pinimg.com/originals/fc/15/62/fc1562cb8fe3ad64c387c600180f6a87.jpg", title: "Cocker Spaniel Puppies!", description: "Are they not adorable!", like_count: 0},
  {image: "https://furrybabiesinc.com/wp-content/uploads/2018/03/Cavachon-puppies.jpg", title: "Cavachon Pup!", description: "Look at her climbing that rock...", like_count: 0},
  {image: "https://gfp-2a3tnpzj.stackpathdns.com/wp-content/uploads/2016/07/Chesapeake-Bay-Retriever-Puppies-for-Sale-600x600.jpg", title: "Retriever Chocolate Puppy", description: "He could make your heart melt <3", like_count: 0},
  {image: "https://i.ebayimg.com/00/s/NjAwWDYwMA==/z/Jq8AAOSwWMNbszsC/$_20.jpg", title: "Shibu Inu Pup", description: "Look at the curly tail!", like_count: 0},
  {image: "https://i.ebayimg.com/00/s/NjAwWDYwMA==/z/Jq8AAOSwWMNbszsC/$_20.jpg", title: "Chihiahua Pupster", description: "Keep smiling buddy!", like_count: 0},
  {image: "https://static.boredpanda.com/blog/wp-content/uploads/2015/04/bulldog-puppy-cute-dog-photography-23__605.jpg", title: "English Bulldog Puppy", description: "He can do the splits!", like_count: 0},
  {image: "https://s3.us-west-2.amazonaws.com/photos.puppyspot.com/breeds/299/card/500000290_medium.jpg", title: "Great Dane Puppy" , description: "We'll play catch with you!", like_count: 0},
  {image: "https://i.pinimg.com/originals/e5/18/88/e51888ef772e7f379fcd1f1d7aae7da1.jpg", title: "Husky Pup", description: "Look at those bright blue eyes!!", like_count: 0}
]

posts.each { |post| Post.create(post)}
