# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(email: 'brian@example.com',
            password: 'password',
            password_confirmation: 'password',
            name: 'Brian',
            role: User.roles[:admin])
User.create(email: 'bruce@campbell.com',
            password: 'password',
            password_confirmation: 'password',
            name: 'Bruce')

10.times do |x|
    post = Post.create(title: "Title #{x}",
                        body: "Body #{x} Lorem ipsum: you my only friend...",
                        user_id: User.first.id)

5.times do |y|
        post.Comment.create(body: "Comment #{y}",
                        user_id: User.second.id)

    end
end