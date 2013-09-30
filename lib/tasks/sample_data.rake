namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Issac Clark",
                 email: "beautyfreak89@gmail.com",
                 password: "Loveyou123",
                 password_confirmation: "Loveyou123",
                 admin: true)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end
