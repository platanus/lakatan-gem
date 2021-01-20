require "spec_helper"

describe Lakatan do
  before do
    helper_example
  end

  it "has a version number" do
    expect(Lakatan::VERSION).not_to be nil
  end
end
