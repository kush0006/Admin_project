# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do
	user = User.create(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		about: Faker::Lorem.sentences,
		email: Faker::Internet.free_email,
		password: "123456"
	)
	article = Article.create(
		title: Faker::Book.title,
		content: Faker::Lorem.paragraph,
		is_publish: Faker::Boolean.boolean,
		user: user
	)
	tag = Tag.create(
		name: Faker::Name.name
	)
	Comment.create(
		fullname: Faker::Name.name,
		email: Faker::Internet.free_email,
		message: Faker::Lorem.sentences,
		status: Faker::Boolean.boolean,
		article: article
	)
	ArticleTag.create(
		article: article,
		tag: tag
	)
	Message.create(
		fullname: Faker::Name.name,
		email: Faker::Internet.free_email,
		content: Faker::Lorem.paragraph
	)
end