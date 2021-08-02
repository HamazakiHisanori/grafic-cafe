# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
Rails.application.config.assets.precompile += %w(
  homes/index.css
  homes/worker.css
  menus/show.css
  menus/new_edit.css
  news/show.css
  news/new_edit.css
  devise/registration.css
  devise/session.css
  components/access.css
  components/contact.css
  components/homebar.css
  components/menu.css
  components/news.css
  components/footer.css
  components/footer_second.css
  components/error_messages.css
  colorbox/colorbox.css
)
