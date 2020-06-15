# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users = User.create([{username: "jequezinho", password: "MinhaSenha"}, {username: "creguedeivis", password: "Braunes0"}])

# JRO Notes
Note.create(title: "Rails Models", content: "Start out with two models: User and Note", user: users.first)
Note.create(title: "To-Dos", content: "1. Make Rails models; 2. Create seed data; 3. Make sure data works", user: users.first)
Note.create(title: "Books", content: "I need to make a list of books to read over the next month or so. Ideally, I'll read at least 100 pages a day. Ni que me faltara tiempo para leer!", user: users.first)

# CD Notes
Note.create(title: "Home Run Derby", content: "2000 HR Derby is on ESPN! I was there! I think I see me in the crowd!!", user: users.second)
Note.create(title: "Braunes", content: "Porra, o meu suprimento de braunes esta acabando... preciso falar com o meu diler agora!", user: users.second)
Note.create(title: "Kysla", content: "O loquedao esta me matando... estou com muita tesao. Vou escrever para a Kysla para tentar marcar um encontra com ela!", user: users.second)