puts "🌱 Seeding spices..."

# Seed your database here

Person.destroy_all
Album.destroy_all


puts "Who's listening today?"
p1 = Person.create(first_name: "Bo", last_name: "Hauptly")
p2 =Person.create(first_name: "Abigail", last_name: "Arisa")

puts "What are we listening to?"
a1 = Album.create(name: "ZUU", genre: "Rap", artist: "Denzel Curry", release_year: 2019, image_url: "./images/ZUU.png", person: p1, like: 0)
a2 = Album.create(name: "To Pimp a Butterfly", genre: "Rap", artist: "Kendrick Lamar", release_year: 2015, image_url: "./images/To_Pimp_A_Butterfly.png", person: p1, like: 0)
a3 = Album.create(name: "Toxicity", genre: "Rock", artist: "System of a Down", release_year: 2001, image_url: "./images/Toxicity.jpg", person: p1, like: 0)
a4 = Album.create(name: "Lateralus", genre: "Rock", artist: "TOOL", release_year: 2001, image_url: "./images/Lateralus.jpg", person: p1, like: 0)
a5 = Album.create(name: "Evil Empire", genre: "Rock", artist: "Rage Against the Machine", release_year: 1996, image_url: "./images/Evil Empire.png", person: p1, like: 0)
a6 = Album.create(name: "The Predator", genre: "Rap", artist: "Ice Cube", release_year: 1992, image_url: "./images/The_Predator.jpg", person: p1, like: 0)
a7 = Album.create(name: "Straight Outta Compton", genre: "Rap", artist: "N.W.A", release_year: 1988, image_url: "./images/Straight_Outta_Compton.jpg", person: p1, like: 0)
a8 = Album.create(name: "Ta13oo", genre: "Rap", artist: "Denzel Curry", release_year: 2018, image_url: "./images/Ta13oo.jpg", person: p1, like: 0)
a9 = Album.create(name: "Stankonia", genre: "Rap", artist: "OutKast", release_year: 2000, image_url: "./images/stankonia.jpg", person: p1, like: 0)
a10 = Album.create(name: "All Eyez On Me", genre: "Rap", artist: "2Pac", release_year: 1996, image_url: "./images/All_Eyes_On_Me.jpg", person: p1, like: 0)
a11 = Album.create(name: "Hozier", genre: "Rock", artist: "Hozier", release_year: 2014, image_url: "./images/Hozier - Hozier.jpeg", person: p2, like: 0)
a12 = Album.create(name: "When I Get Home", genre: "Contemporary R&B", artist: "Solange", release_year: 2019, image_url: "./images/Solange_-_When_I_Get_Home.png", person: p2, like: 0)
a13 = Album.create(name: "Love Deluxe", genre: "Rhythm & Blues", artist: "Sade", release_year: 1992, image_url: "./images/Sade_-_Love_Deluxe.png", person: p2, like: 0)
a14 = Album.create(name: "Glow On", genre: "Hardcore punk", artist: "Turnstile", release_year: 2021, image_url: "./images/Glow On - Turntsile .jpeg", person: p2, like: 0)
a15 = Album.create(name: "Random Acess Memories", genre: "Electronic", artist: "Daft Punk", release_year: 2013, image_url: "./images/Random_Access_Memories.jpeg", person: p2, like: 0)
a16 = Album.create(name: "Lady Lady", genre: "Contemporary R&B", artist: "Masego", release_year: 2018, image_url: "./images/Lady Lady - Masego.jpeg", person: p2, like: 0)
a17 = Album.create(name: "My Own Prison" , genre: "Post-grunge", artist: "Creed", release_year: 1997, image_url: "./images/My Own Prison - Creed.jpeg", person: p2, like: 0)
a18 = Album.create(name: "Blonde", genre: "Contemporary R&B", artist: "Frank Ocean", release_year: 2016, image_url: "./images/Blonde - Frank Ocean.jpeg", person: p2, like: 0)
a19 = Album.create(name: "Cupid Deluxe", genre: "Funk", artist: "Blood Orange", release_year: 2013, image_url: "./images/Cupid Deluxe - Blood Orange.jpeg", person: p2, like: 0)
a20 = Album.create(name: "For Emma, Forever Ago", genre: "Indie Folk", artist: "Bon Iver", release_year: 2007, image_url: "./images/For Emma, Forever Ago - Bon Iver.jpeg", person:p2, like: 0)


puts "✅ Done seeding!"

