# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
schedules = Schedule.create([{
  "away": "West Auckland Admirals",
  "date": "Sunday August 6th, 4:45pm",
  "home": "Botany Swarm",
  "leagueGame": "Game 40",
  "venue": "Paradice Botany",
  "homeLogo": "https://firebasestorage.googleapis.com/v0/b/nzihl-game-center.appspot.com/o/swarm.png?alt=media&token=6b9f1231-5837-4dde-9c31-8db2fedb96b8",
  "awayLogo": "https://firebasestorage.googleapis.com/v0/b/nzihl-game-center.appspot.com/o/admirals.png?alt=media&token=4effc8b6-fffa-4d57-8159-2ba45e630a60"
}])

p "created #{Schedule.count} games"
