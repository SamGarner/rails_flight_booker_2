# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.create([{ code: 'MDW', city: 'Chicago' }, { code: 'DEN', city: 'Denver' },
                { code: 'VRN',  city: 'Verona, IT' }, { code: 'HND', city: 'Tokyo, JP' },
                { code: 'IST', city: 'Istanbul, TR' }])
