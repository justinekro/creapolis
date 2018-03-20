# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





user_regular = User.create(pseudo: "Nico", email:"nico@gmail.com", password: "coucou")
user_regular2 = User.create(pseudo: "Samba", email:"samba@gmail.com", password: "coucou")
user_regular3 = User.create(pseudo: "Justine", email:"justine@gmail.com", password: "coucou")
user_regular4 = User.create(pseudo: "Sylvain", email:"sylvain@gmail.com", password: "coucou")
user_regular5 = User.create(pseudo: "Louis", email:"louis@gmail.com", password: "coucou")


user_dacruz = User.create(pseudo: "Dacruz", email:"dacruz@gmail.com", password:"coucou", artist: true)
user_ren = User.create(pseudo: "Ren", email: "ren@gmail.com", password:"coucou", artist: true)
user_sanetwo = User.create(pseudo: "Sanetwo", email: "sanetwo@gmail.com", password:"coucou", artist: true)


artwork1 = Artwork.create(title:"Une super oeuvre d'art", lat: "48.8879012", long: "2.384519")
artwork2 = Artwork.create(title:"Une chouette oeuvre d'art", lat: "48.8897974", long: "2.3846279")
artwork3 = Artwork.create(title:"Une incroyable oeuvre d'art", lat: "48.8897424", long: "2.3844968", artist:user_sanetwo)

picture1 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/v1521038222/image1.jpg", artwork: artwork1, user: user_regular)
picture2 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/v1521038228/image2.jpg", artwork: artwork2, user: user_regular)
picture3 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/v1521038233/image3.jpg", artwork: artwork3, user: user_regular)
picture4 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/v1521038233/image3.jpg", artwork: artwork1, user: user_regular2)
picture5 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/v1521038222/image1.jpg", artwork: artwork1, user: user_regular3)
picture6 = Picture.create(remote_img_url_url: "http://res.cloudinary.com/creapolis/image/upload/v1521038222/image1.jpg", artwork: artwork1, user: user_regular4)




artwork1.artists << user_dacruz

artwork2.artists << user_ren
