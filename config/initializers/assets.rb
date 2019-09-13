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
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

#Estilos CSS...
Rails.application.config.assets.precompile += %w( main.css )
Rails.application.config.assets.precompile += %w( bootstrap/bootstrap.min.css )
Rails.application.config.assets.precompile += %w( bootstrap/font-awesome.min.css )
Rails.application.config.assets.precompile += %w( bootstrap/ionicons.min.css )
Rails.application.config.assets.precompile += %w( bootstrap/jquery-jvectormap.css )
Rails.application.config.assets.precompile += %w( adminlte/adminlte.min.css )
Rails.application.config.assets.precompile += %w( adminlte.min.css )
Rails.application.config.assets.precompile += %w( adminlte/_all-skins.min.css )
Rails.application.config.assets.precompile += %w( toastr/toastr.min.css)

#Estilos javascript...
Rails.application.config.assets.precompile += %w( dist/js/jquery.min.js )
Rails.application.config.assets.precompile += %w( dist/js/bootstrap.min.js )
Rails.application.config.assets.precompile += %w( dist/js/fastclick.js )
Rails.application.config.assets.precompile += %w( dist/js/adminlte.min.js )
Rails.application.config.assets.precompile += %w( dist/js/jquery.sparkline.min.js )
Rails.application.config.assets.precompile += %w( dist/plugins/jquery-jvectormap-1.2.2.min.js )
Rails.application.config.assets.precompile += %w( dist/plugins/jquery-jvectormap-world-mill-en.js)
Rails.application.config.assets.precompile += %w( dist/js/jquery.slimscroll.min.js )
Rails.application.config.assets.precompile += %w( dist/js/Chart.js )
Rails.application.config.assets.precompile += %w( dist/js/dashboard2.js )
Rails.application.config.assets.precompile += %w( dist/js/demo.js )

#home#index...
Rails.application.config.assets.precompile += %w( home.css )
Rails.application.config.assets.precompile += %w( especialidades.css )
