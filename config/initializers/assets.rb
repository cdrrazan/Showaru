# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
Rails.application.config.assets.paths << Rails.root.join("node_modules/bootstrap-icons/font")
Rails.application.config.assets.paths << Rails.root.join("node_modules/bootstrap/dist/js")
Rails.application.config.assets.precompile << "bootstrap.bundle.min.js"

# Code To be Refactored
# Add vendor CSS/JS files needed
# Add the main vendor assets directory to the load path
# Make sure this line is present and not duplicated
Rails.application.config.assets.paths << Rails.root.join("vendor", "assets")

# You might still need specific paths for things like fonts if they aren't found automatically
Rails.application.config.assets.paths << Rails.root.join("vendor", "assets", "vendor", "bootstrap-icons", "fonts ")

# Add vendor CSS/JS files needed
Rails.application.config.assets.precompile += %w[
  main.css
  vendor/bootstrap/css/bootstrap.min.css
  vendor/bootstrap-icons/bootstrap-icons.css
  vendor/aos/aos.css
  vendor/glightbox/css/glightbox.min.css
  vendor/swiper/swiper-bundle.min.css
  vendor/main/
  # Add JS files if they exist and are needed globally
  # vendor/bootstrap/js/bootstrap.bundle.min.js
  # vendor/aos/aos.js
  # vendor/glightbox/js/glightbox.min.js
  # vendor/swiper/swiper-bundle.min.js
  # main.js # If you create one
]
# Precompile all images from vendor/assets/img
Rails.application.config.assets.precompile += %w[ *.png *.jpg *.jpeg *.gif *.webp *.svg ]
