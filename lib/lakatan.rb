require "lakatan/version"
require "require_all"
require "activeresource"
require "active_support/all"

module Lakatan
  extend self

  attr_accessor :site_url, :authorization_token

  def setup
    yield self
    require "lakatan/main"
  end
end
