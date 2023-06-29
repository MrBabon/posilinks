# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning up database..."
Organization.destroy_all
Event.destroy_all
puts "Database cleaned"

resto_du_coeur = Organization.create!(
  name: "Resto du coeur",
  category: "humanitaire",
  email: "resto@lewagon.fr",
  password: "password",
  address: "21 Rue Dabray, 06000 Nice",
  phone_number: "0493800367",
  description: "Leur but est 'd’aider et d’apporter une assistance bénévole aux personnes démunies, notamment dans le domaine alimentaire par l’accès à des repas gratuits, et par la participation à leur insertion sociale et économique, ainsi qu’à toute action contre la pauvreté sous toutes ses formes'."
)

#
wwf = Organization.create!(
  name: "WWF",
  category: "ecologie",
  email: "wwf@lewagon.fr",
  password: "password",
  address: "35/37, rue Baudin, 93310 Le Pré-Saint-Gervais",
  phone_number: "0171864060",
  description: "Arrêter la dégradation de l'environnement dans le monde et construire un avenir où les êtres humains pourront vivre en harmonie avec la nature."
)

croix_rouge = Organization.create!(
  name: "Croix rouge",
  category: "humanitaire",
  email: "croixrouge@lewagon.fr",
  password: "password",
  address: "65 Av. Alfred Borriglione, 06100 Nice",
  phone_number: "0489144336",
  description: "Bénévoles, salariés, mettez vos compétences au service d'une grande idée. Avec vos dons nous sauvons des vies et nous aidons les personnes démunies."
)

nettoyage = Event.create!(
  address: "La Base, 56100, Lorient, Morbihan, Bretagne, FRA",
  title: "Nettoyage de la plage",
  description: "Dans le cadre de Lorient Océans, RDV avec l’association Les Mains Dans Le Sable le dimanche 2 juillet de 10h30-12h30 pour une action de nettoyage de La Base à Lorient.",
  date: "2023-07-02",
  organization: wwf
)

article1 = Article.create!(
  title: "Article 1",
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  event: nettoyage
)
collecte = Event.create!(
  address: "606, Bd du mercantour, 06200 Nice",
  title: "collecte de denrées alimentaire",
  description: "Dans le cadre de la collecte de denrées alimentaire, RDV avec l’association des Restos du coeur le mercredi 12 juillet de 14h00-18h00 à Carrefour Lingostiére pour animer la récolte de produits de 1ére nécessité (alimentaire, hygiéne etc...).",
  date: "2023-07-12",
  organization: resto_du_coeur
)

article2 = Article.create!(
  title: "Venez nombreux, nous aider!",
  content: "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  event: collecte
)
soutien = Event.create!(
  address: "Av. de la Vaugine, 83300 Draguignan",
  title: "Soutien psychologique et isolement social",
  description: "Dépression, troubles affectifs, anxiété, burn-out ou idées noires sont autant de difficultés auxquelles nous sommes nombreux à faire face. Alors que 50 % des absences au travail sont liées à la santé mentale, 1 personne sur 5 souffre de troubles mentaux dans sa vie",
  date: "2023-09-05",
  organization: croix_rouge
)
integration_social = Event.create!(
  address: "50 Rue Ferrere, 33000 Bordeaux",
  title: "Intégration sociale des personnes en situation de précarité",
  description: "Nous le constatons chaque jour dans nos délégations, le travail ne protège plus de la précarité. Aujourd’hui, viennent s’ajouter aux personnes sans-abri trois nouvelles catégories de bénéficiaires ayant recours aux aides sociales : les jeunes, les personnes âgées et les travailleurs pauvres.",
  date: "2023-11-25",
  organization: croix_rouge
)
