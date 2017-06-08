# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: 'Руслан', login: 'ruslan', password: '1234')
Stock.create(pure_water: 0, empty_bottle: 0, dirty_bottle: 0, who_makes_changes: "admin")
#
Driver.create(name: 'Артем', login: 'art', password: '1234')
Driver.create(name: 'Мэзербэч', login: 'mez', password: '1234')
#
Shop.create(name: "М-Видео", address: "г.Майкоп, ул. Гоголя, 26", phone: "89633799023")
Shop.create(name: "Столица", address: "г.Майкоп, ул. Краснооктябрьская, 36", phone: "89633799021")
