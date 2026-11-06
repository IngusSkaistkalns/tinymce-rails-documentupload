module Tinymce
  module Rails
    module Documentupload
      class Engine < ::Rails::Engine
        initializer 'TinymceRailsDocumentupload.assets_pipeline' do |app|
          app.config.assets.precompile << "tinymce-rails-documentupload.manifest.js" # Sprockets 4
          app.config.assets.precompile << "tinymce/plugins/uploaddocument/*"         # Sprockets 3
        end
      end
    end
  end
end
