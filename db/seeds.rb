# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create({
        email: 'testUser',
        phone: '+12345678',
        password: 'test1234',
        name: Faker::Name.name,
        address: Faker::Address.full_address
    })

4.times do
    User.create({
        email: Faker::Twitter.screen_name,
        phone: '+12345678',
        password: 'test1234',
        name: Faker::Name.name,
        address: Faker::Address.full_address
    })
end

Product.create({
    user_id: 1,
    title: 'Cricket Kit',
    categories: 'Sporting Goods, Outdoor',
    desc: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugiat culpa laudantium minima a perferendis cumque, quam, illo esse, quia vitae commodi veniam eligendi vero! Exercitationem ad natus aut fugit at assumenda quos molestiae veniam laudantium. Sit tempore, nulla debitis dolorem, vitae necessitatibus repellat magnam exercitationem soluta eligendi mollitia! Temporibus eaque maxime magnam fuga adipisci exercitationem dolor blanditiis explicabo ipsa cumque?',
    price: 500,
    rentRate: 100,
    rentInterval: 'daily',
    views: 156
})

Product.create({
    user_id: 1,
    title: 'iPhone 13 pro max',
    categories: 'Electronics',
    desc: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugiat culpa laudantium minima a perferendis cumque, quam, illo esse, quia vitae commodi veniam eligendi vero! Exercitationem ad natus aut fugit at assumenda quos molestiae veniam laudantium. Sit tempore, nulla debitis dolorem, vitae necessitatibus repellat magnam exercitationem soluta eligendi mollitia! Temporibus eaque maxime magnam fuga adipisci exercitationem dolor blanditiis explicabo ipsa cumque?',
    price: 1500,
    rentRate: 50,
    rentInterval: 'hourly',
    views: 1028376412
})

Product.create({
    user_id: 3,
    title: 'iPhone 10',
    categories: 'Electronics',
    desc: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugiat culpa laudantium minima a perferendis cumque, quam, illo esse, quia vitae commodi veniam eligendi vero! Exercitationem ad natus aut fugit at assumenda quos molestiae veniam laudantium. Sit tempore, nulla debitis dolorem, vitae necessitatibus repellat magnam exercitationem soluta eligendi mollitia! Temporibus eaque maxime magnam fuga adipisci exercitationem dolor blanditiis explicabo ipsa cumque?',
    price: 800,
    rentRate: 35,
    rentInterval: 'hourly',
    views: 102837
})

Bought.create({
    user_id: 2,
    product_id: 1
})

Rented.create({
    user_id: 2,
    product_id: 2
})