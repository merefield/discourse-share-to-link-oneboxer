# frozen_string_literal: true

module ::ShareToLinkOneboxer
  module MetadataControllerExtension
    def default_manifest
      super.tap do |manifest|
        manifest[:share_target][:params][:text] = 'title'
        manifest[:share_target][:params][:title] = "title"
        manifest[:share_target][:params][:url] = "title"
      end
    end
  end
end
