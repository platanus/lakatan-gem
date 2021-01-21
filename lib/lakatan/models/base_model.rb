module Lakatan
  class BaseModel < ActiveResource::Base
    self.site = Lakatan.site_url
    headers["Authorization"] = "Bearer #{Lakatan.authorization_token}"
  end
end
