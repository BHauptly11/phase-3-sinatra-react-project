puts "🌱 Seeding spices..."

# Seed your database here

Person.destroy_all
Album.destroy_all

puts "Who's listening today?"
p1 = Person.create(first_name: "Bo", last_name: "Hauptly")

puts "What are we listening to?"
a1 = Album.create(name: "ZUU", genre: "Rap", artist: "Denzel Curry", release_year: 2019, image_url: "N/A", person: p1)
a2 = Album.create(name: "To Pimp a Butterfly", genre: "Rap", artist: "Kendrick Lamar", release_year: 2015, image_url: "N/A", person: p1)
a3 = Album.create(name: "Toxicity", genre: "Rock", artist: "System of a Down", release_year: 2001, image_url: "N/A", person: p1)
a4 = Album.create(name: "Lateralus", genre: "Rock", artist: "TOOL", release_year: 2001, image_url: "N/A", person: p1)
a5 = Album.create(name: "Evil Empire", genre: "Rock", artist: "Rage Against the Machine", release_year: 1996, image_url: "N/A", person: p1)
a6 = Album.create(name: "The Predator", genre: "Rock", artist: "Ice Cube", release_year: 1992, image_url: "N/A", person: p1)
a7 = Album.create(name: "Straight Outta Compton", genre: "Rap", artist: "N.W.A", release_year: 1988, image_url: "N/A", person: p1)
a8 = Album.create(name: "Ta13oo", genre: "Rap", artist: "Denzel Curry", release_year: 2018, image_url: "N/A", person: p1)
a9 = Album.create(name: "Stankonia", genre: "Rap", artist: "OutKast", release_year: 2000, image_url: "N/A", person: p1)
a10 = Album.create(name: "All Eyez On Me", genre: "Rap", artist: "2Pac", release_year: 1996, image_url: "N/A", person: p1)

puts "✅ Done seeding!"
