# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Create categories
Category.create(name: "Fitness", description: "Articles and tips on fitness.")
Category.create(name: "Nutrition", description: "Articles and tips on nutrition.")
Category.create(name: "Mental Health", description: "Articles and tips on mental health.")

# Create dummy posts
Post.create(
  title: "Post 1",
  content: "This is the content for post 1. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  author_name: "Author 1",
  category_id: Category.find_by(name: "Fitness").id,
  published_at: Time.now
)

Post.create(
  title: "Post 2",
  content: "This is the content for post 2. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  author_name: "Author 2",
  category_id: Category.find_by(name: "Nutrition").id,
  published_at: Time.now
)

Post.create(
  title: "Post 3",
  content: "This is the content for post 3. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  author_name: "Author 3",
  category_id: Category.find_by(name: "Mental Health").id,
  published_at: Time.now
)

Post.create(
  title: "Post 4",
  content: "This is the content for post 4. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  author_name: "Author 4",
  category_id: Category.find_by(name: "Fitness").id,
  published_at: Time.now
)

Post.create(
  title: "Post 5",
  content: "This is the content for post 5. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  author_name: "Author 5",
  category_id: Category.find_by(name: "Nutrition").id,
  published_at: Time.now
)

Post.create(
  title: "Post 6",
  content: "This is the content for post 6. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  author_name: "Author 6",
  category_id: Category.find_by(name: "Mental Health").id,
  published_at: Time.now
)

Post.create(
  title: "Post 7",
  content: "This is the content for post 7. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  author_name: "Author 7",
  category_id: Category.find_by(name: "Fitness").id,
  published_at: Time.now
)

Post.create(
  title: "Post 8",
  content: "This is the content for post 8. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  author_name: "Author 8",
  category_id: Category.find_by(name: "Nutrition").id,
  published_at: Time.now
)

Post.create(
  title: "Post 9",
  content: "This is the content for post 9. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  author_name: "Author 9",
  category_id: Category.find_by(name: "Mental Health").id,
  published_at: Time.now
)

Post.create(
  title: "Post 10",
  content: "This is the content for post 10. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  author_name: "Author 10",
  category_id: Category.find_by(name: "Fitness").id,
  published_at: Time.now
)

Post.create(
  title: "Post 11",
  content: "This is the content for post 11. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  author_name: "Author 11",
  category_id: Category.find_by(name: "Nutrition").id,
  published_at: Time.now
)

Post.create(
  title: "Post 12",
  content: "This is the content for post 12. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  author_name: "Author 12",
  category_id: Category.find_by(name: "Mental Health").id,
  published_at: Time.now
)

Advertisement.create(
  title: "Special Offer!",
  content: "Get 20% off on all fitness equipment.",
  image_url: "https://example.com/special_offer.jpg",
  link_url: "https://example.com/special_offer",
  start_date: Date.today,
  end_date: Date.today + 1.month,
  price: 50.00
)
Advertisement.create(
  title: "New Fitness Program!",
  content: "Join our new fitness program and get in shape in just 30 days.",
  image_url: "https://example.com/fitness_program.jpg",
  link_url: "https://example.com/fitness_program",
  start_date: Date.today,
  end_date: Date.today + 1.month,
  price: 75.00
)

Advertisement.create(
  title: "Healthy Meal Plans",
  content: "Discover our delicious and nutritious meal plans for a healthier lifestyle.",
  image_url: "https://example.com/meal_plans.jpg",
  link_url: "https://example.com/meal_plans",
  start_date: Date.today,
  end_date: Date.today + 1.month,
  price: 60.00
)

Advertisement.create(
  title: "Fitness Apparel Sale!",
  content: "Get up to 50% off on all fitness apparel. Limited time offer!",
  image_url: "https://example.com/fitness_apparel_sale.jpg",
  link_url: "https://example.com/fitness_apparel_sale",
  start_date: Date.today,
  end_date: Date.today + 1.month,
  price: 30.00
)

User.create(username: "user1", email: "user1@example.com", password_digest: BCrypt::Password.create("password1"))
User.create(username: "user2", email: "user2@example.com", password_digest: BCrypt::Password.create("password2"))
User.create(username: "user3", email: "user3@example.com", password_digest: BCrypt::Password.create("password3"))
User.create(username: "user4", email: "user4@example.com", password_digest: BCrypt::Password.create("password4"))
User.create(username: "user5", email: "user5@example.com", password_digest: BCrypt::Password.create("password5"))

Plan.create(
  name: "Basic",
  description: "Basic subscription plan",
  price: 9.99,
  duration: 1
)

Plan.create(
  name: "Premium",
  description: "Premium subscription plan",
  price: 19.99,
  duration: 12
  )
Subscription.create(
  user_id: User.first.id,
  plan_id: Plan.first.id,
  start_date: Date.today,
  end_date: Date.today + 1.month,
  status: "active"
)

Subscription.create(
  user_id: User.second.id,
  plan_id: Plan.second.id,
  start_date: Date.today,
  end_date: Date.today + 1.month,
  status: "active"
)

Subscription.create(
  user_id: User.third.id,
  plan_id: Plan.first.id,
  start_date: Date.today,
  end_date: Date.today + 1.month,
  status: "active"
)

Subscription.create(
  user_id: User.fourth.id,
  plan_id: Plan.second.id,
  start_date: Date.today,
  end_date: Date.today + 1.month,
  status: "active"
)

Subscription.create(
  user_id: User.fifth.id,
  plan_id: Plan.first.id,
  start_date: Date.today,
  end_date: Date.today + 1.month,
  status: "active")

Comment.create(
  content: "This post really helped me understand the importance of nutrition.",
  user_id: User.first.id,
  post_id: Post.first.id
)

Comment.create(
  content: "I love the tips mentioned in this post. Will definitely try them out!",
  user_id: User.first.id,
  post_id: Post.second.id
)

Comment.create(
  content: "Great content! Looking forward to more posts like this.",
  user_id: User.first.id,
  post_id: Post.last.id
)
Product.create(
  name: "Protein Powder",
  description: "High-quality protein powder for muscle building.",
  price: 29.99,
  image_url: "https://example.com/protein_powder.jpg",
  affiliate_link: "https://example.com/protein_powder_affiliate"
)

Product.create(
  name: "Yoga Mat",
  description: "Premium yoga mat for comfortable workouts.",
  price: 39.99,
  image_url: "https://example.com/yoga_mat.jpg",
  affiliate_link: "https://example.com/yoga_mat_affiliate"
)

Product.create(
  name: "Resistance Bands",
  description: "Set of resistance bands for versatile workouts.",
  price: 19.99,
  image_url: "https://example.com/resistance_bands.jpg",
  affiliate_link: "https://example.com/resistance_bands_affiliate"
)

Product.create(
  name: "Running Shoes",
  description: "High-performance running shoes for all terrains.",
  price: 79.99,
  image_url: "https://example.com/running_shoes.jpg",
  affiliate_link: "https://example.com/running_shoes_affiliate"
)

Product.create(
  name: "Fitness Tracker",
  description: "Track your fitness goals with this advanced fitness tracker.",
  price: 99.99,
  image_url: "https://example.com/fitness_tracker.jpg",
  affiliate_link: "https://example.com/fitness_tracker_affiliate"
)
