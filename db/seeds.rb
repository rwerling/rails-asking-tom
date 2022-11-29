# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# -------
# create users

User.destroy_all

user1 = User.create(email: "lisa@mail.com", password: "123456")
# User.create(email: "ray@mail.com", password: "123456")
# User.create(email: "sabrina@mail.com", password: "123456")
# User.create(email: "xiomara@mail.com", password: "123456")

# -------
# create decision and assign them to users
decision1 = Decision.new(decision_name: "Summer Hollidays 2023")
decision1.user = user1
decision1.save
# Decision.create(decision_name: "Christmas gift for mum", user_id: 1).save
# Decision.create(decision_name: "Buy a new bike?", user_id: 1).save
# Decision.create(decision_name: "Move to Frankfurt?", user_id: 1).save

# -------
# create options and assign them to decision "Summer Holiday 2023"
option1 = Option.new(option_name: "Barcelona")
option1.decision = decision1
option1.save
# Option.create(option_name: "London", decision_id: 1).save
# Option.create(option_name: "Oslo", decision_id: 1).save

# # create options and assign them to decision "Christmas gift mum"
# Option.create(option_name: "Gloves", decision_id: 2).save
# Option.create(option_name: "Socks", decision_id: 2).save
# Option.create(option_name: "Dress", decision_id: 2).save
# Option.create(option_name: "Make a photo album", decision_id: 2).save
# Option.create(option_name: "Box of champagne", decision_id: 2).save

# create options and assign them to decision "Buy a new bike?"
# Option.create(option_name: "yes", decision_id: 3).save
# Option.create(option_name: "no", decision_id: 3).save

# # create options and assign them to decision "Move to Frankfurt?"
# Option.create(option_name: "yes", decision_id: 4).save
# Option.create(option_name: "no", decision_id: 4).save

# -------
# create arguments and assign them to option "barcelona"
argument1 = Argument.new(argument_name: "good weather", score: 5)
argument1.option = option1
argument1.save
# Argument.create(option_id: 1, argument_name: "cheap flight", score: 4)
# Argument.create(option_id: 1, argument_name: "too many tourists", score: 1)

# # create arguments and assign them to option "london"
# Argument.create(option_id: 2, argument_name: "good weather", score: 5)
# Argument.create(option_id: 2, argument_name: "cheap flight", score: 4)
# Argument.create(option_id: 2, argument_name: "too many tourists", score: 1)

# # create arguments and assign them to option "oslo"
# Argument.create(option_id: 3, argument_name: "bad weather", score: 2)
# Argument.create(option_id: 3, argument_name: "great landscape around", score: 5)
# Argument.create(option_id: 3, argument_name: "not too many tourists", score: 3)
# Argument.create(option_id: 3, argument_name: "I don't speak any Norwegian", score: 2)

# # -------
# # create arguments and assign them to option "Gloves"
# Argument.create(option_id: 1, argument_name: "cheap", score: 4)
# Argument.create(option_id: 1, argument_name: "she has gloves already", score: 3)

# # create arguments and assign them to option "Socks"
# Argument.create(option_id: 2, argument_name: "booooring", score: 1)
# Argument.create(option_id: 2, argument_name: "she always has cold feet", score: 4)
# Argument.create(option_id: 2, argument_name: "socks rock!", score: 5)

# # create arguments and assign them to option "Dress"
# Argument.create(option_id: 3, argument_name: "too cold for winter", score: 2)
# Argument.create(option_id: 3, argument_name: "next summer is coming", score: 4)
# Argument.create(option_id: 3, argument_name: "I don't know the size", score: 1)
# Argument.create(option_id: 3, argument_name: "I don't know where to buy it", score: 3)

# # create arguments and assign them to option "Make a photo album"
# Argument.create(option_id: 4, argument_name: "so much work", score: 1)
# Argument.create(option_id: 4, argument_name: "she would love it", score: 5)

# # create arguments and assign them to option "Box of Champagne"
# Argument.create(option_id: 5, argument_name: "expensive", score: 1)
# Argument.create(option_id: 5, argument_name: "we could drink champagne on christmas", score: 4)
# Argument.create(option_id: 5, argument_name: "might not arrive in time", score: 2)
# Argument.create(option_id: 5, argument_name: "she does not drink", score: 1)

# # -------
# # create arguments and assign them to option "yes"
# Argument.create(option_id: 1, argument_name: "my old bike is shit", score: 4)
# Argument.create(option_id: 1, argument_name: "it will probably get stolen", score: 1)
# Argument.create(option_id: 1, argument_name: "I would do so much sport!", score: 5)

# # create arguments and assign them to option "no"
# Argument.create(option_id: 2, argument_name: "my old bike is still ok", score: 3)
# Argument.create(option_id: 2, argument_name: "very expensive", score: 5)
# Argument.create(option_id: 2, argument_name: "I would worry all the time it gets stolen", score: 5)


# # -------
# # create arguments and assign them to option "yes"
# Argument.create(option_id: 1, argument_name: "I would discover a new city", score: 4)
# Argument.create(option_id: 1, argument_name: "I could live in a skyscaper", score: 5)
# Argument.create(option_id: 1, argument_name: "I could take my bike to go to work", score: 5)
# Argument.create(option_id: 1, argument_name: "Rents are super high", score: 1)


# # create arguments and assign them to option "no"
# Argument.create(option_id: 2, argument_name: "I have a cheap rent", score: 5)
# Argument.create(option_id: 2, argument_name: "The commute would be super long!", score: 5)
