require "spec_helper"

describe Lakatan::User do
  it_behaves_like "find resource", 115
  it_behaves_like "all resources"
end
