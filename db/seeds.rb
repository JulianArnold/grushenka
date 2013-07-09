# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all

Product.create(title: 'Waiting for something to happen',
	description:
		%{
			Grushenka Arnold's debut album on CD and download. Features gems like 'This love', 'Sacred', 'We could be lovers' and many more.
		},
		image_url: 'grushenka_photo05_second_album_cover.jpg', price: 9.99)

Product.create(title: 'LIVE! At the Marquee, Cork',
	description:
		%{
			Grushenka Arnold's live CD recorded at the Marquee as support act to Anastacia.
		},
		image_url: 'grushenka_photo10_live_marquee.jpg', price: 7.99)

Product.create(title: 'T-Shirt with photo',
  description:
                   %{
			T-shirt available in all sizes, M & F.
		},
        image_url: 'T-shirt_sample.jpg', price: 11.99)
