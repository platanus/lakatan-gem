require "spec_helper"

describe Lakatan::Team do
  it_behaves_like "find resource", 99
  it_behaves_like "all resources"
end
