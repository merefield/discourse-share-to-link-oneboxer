# frozen_string_literal: true

module ::ShareToLinkOneboxer
  module MetadataControllerExtension
    def default_manifest
      super.tap do |manifest|
        # manifest[:share_target][:params][:text] = 'body'
        manifest[:share_target][:params][:title] = "link"
      end
    end
  end
end
