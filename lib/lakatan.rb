require "lakatan/version"
require "require_all"
require "activeresource"

module Lakatan
  extend self

  attr_accessor :site_url, :authorization_token

  def setup
    yield self
    require "lakatan/main"
  end
end
