# frozen_string_literal: true

module ::ShareToLinkOneboxer
  class Engine < ::Rails::Engine
    engine_name PLUGIN_NAME
    isolate_namespace ShareToLinkOneboxer
    config.autoload_paths << File.join(config.root, 'lib')
  end
end
