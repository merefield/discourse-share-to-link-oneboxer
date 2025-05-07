# frozen_string_literal: true

# name: discourse-share-to-link-oneboxer
# about: An extension to cause shares to PWAs to be entered into the title so they onebox.
# version: 0.0.4
# authors: Robert Barrow
# url: https://github.com/merefield/discourse-share-to-link-oneboxer

enabled_site_setting :share_to_link_oneboxer_enabled

module ::ShareToLinkOneboxer
  PLUGIN_NAME = 'share-to-link-oneboxer'
end

require_relative 'lib/share_to_link_oneboxer/engine'

after_initialize do
  reloadable_patch do
    MetadataController.prepend(::ShareToLinkOneboxer::MetadataControllerExtension)
  end
end
