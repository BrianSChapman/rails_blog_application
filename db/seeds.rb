# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(email: "brian@example.com", name:"Brian", password: "Password", password_confirmation: "Password")
User.create(email: "mae@example.com", name:"Mae", password: "Password", password_confirmation: "Password")

10.times do |x| 
    Post.create(title: "Blog Post #{x}", body: "Lorem ipsum, you my only friend.", user_id: User.first.id)
end
