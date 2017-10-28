# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  admin_user = User.create(name: 'Admin', email: 'admin@example.com', password: 'adminadmin', password_confirmation: 'adminadmin', admin: true)
  user_first = User.create(name: 'Murat', email: 'murat@example.com', password: '12345678', password_confirmation: '12345678')
  user_second = User.create(name: 'John', email: 'john@example.com', password: '12345678', password_confirmation: '12345678')
  user_third = User.create(name: 'Mike', email: 'mike@example.com', password: '12345678', password_confirmation: '12345678')
  user_forth = User.create(name: 'Alice', email: 'alice@example.com', password: '12345678', password_confirmation: '12345678')
  user_fifth = User.create(name: 'Miley', email: 'miley@example.com', password: '12345678', password_confirmation: '12345678')

  photo_first = Photo.create(name: 'Desert', user: user_first)
  photo_first.image = Rails.root.join("app/assets/images/fixtures/Desert.jpg").open
  photo_first.save!
  photo_second = Photo.create(name: 'Coala', user: user_first)
  photo_second.image = Rails.root.join("app/assets/images/fixtures/coala.jpg").open
  photo_second.save!
  photo_third = Photo.create(name: 'Chrysanthemum', user: user_first)
  photo_third.image = Rails.root.join("app/assets/images/fixtures/Chrysanthemum.jpg").open
  photo_third.save!

  photo_forth = Photo.create(name: 'Hydrangeas', user: user_second)
  photo_forth.image = Rails.root.join("app/assets/images/fixtures/Hydrangeas.jpg").open
  photo_forth.save!
  photo_fifth = Photo.create(name: 'Jellyfish', user: user_second)
  photo_fifth.image = Rails.root.join("app/assets/images/fixtures/Jellyfish.jpg").open
  photo_fifth.save!

  photo_six = Photo.create(name: 'Lighthouse', user: user_third)
  photo_six.image = Rails.root.join("app/assets/images/fixtures/Lighthouse.jpg").open
  photo_six.save!

  photo_seven = Photo.create(name: 'Penguins', user: user_forth)
  photo_seven.image = Rails.root.join("app/assets/images/fixtures/Penguins.jpg").open
  photo_seven.save!

  photo_eigth = Photo.create(name: 'Tulips', user: user_fifth)
  photo_eigth.image = Rails.root.join("app/assets/images/fixtures/Tulips.jpg").open
  photo_eigth.save!

  photo_admin = Photo.create(name: 'Admin', user: admin_user)
  photo_admin.image = Rails.root.join("app/assets/images/fixtures/admin.jpg").open
  photo_admin.save!
  
  comment_array = ['GOOD', 'WOW', 'NICE', 'Boooo']
  users_array = [user_first, user_second, user_third, user_forth, user_fifth]
  score_array = ['1','2','3','4','5']
  5.times  do
    photo_first_comment = Comment.create(body: comment_array.sample, score: score_array.sample, user: users_array.sample, photo: photo_first)   	
  end
  5.times  do
    photo_second_comment = Comment.create(body: comment_array.sample, score: score_array.sample, user: users_array.sample, photo: photo_second)   	
  end
  5.times  do
    photo_third_comment = Comment.create(body: comment_array.sample, score: score_array.sample, user: users_array.sample, photo: photo_third)   	
  end
  5.times  do
    photo_forth_comment = Comment.create(body: comment_array.sample, score: score_array.sample, user: users_array.sample, photo: photo_forth)   	
  end


  



