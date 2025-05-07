module ::ShareToLinkOneboxer
  module MetadataControllerExtension
    def default_manifest
      super.tap do |manifest|
        manifest[:share_target][:params][:text] = "body"
        manifest[:share_target][:params][:title] = "body"
      end
    end
  end
end
