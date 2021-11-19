# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "juan@juan.com", password: "123456")

list_posts = [
    # "title", "content", "image", "category", "user_id"
    
    [ "Post 1", "contenido post 1", "url image post 1", "informacion", 1 ],
    ["Post 2", "contenido post 2", "url image post 2", "drama", 1]
]

list_posts.each do |t, c, i, ca, u|
    Post.create(:title => t, :content => c, :image => i, :category => ca, :user_id => u)
end
