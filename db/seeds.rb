# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning up database..."
Organization.destroy_all
puts "Database cleaned"

4.times do
    Organization.create(
        name: "Resto du coeur",
        category: "humanitaire",
        email: "resto@lewagon.fr",
        password: "password",
        address: "21 Rue Dabray, 06000 Nice",
        phone_number: "0493800367",
        description: "Leur but est 'd’aider et d’apporter une assistance bénévole aux personnes démunies, notamment dans le domaine alimentaire par l’accès à des repas gratuits, et par la participation à leur insertion sociale et économique, ainsi qu’à toute action contre la pauvreté sous toutes ses formes'."
    )
end