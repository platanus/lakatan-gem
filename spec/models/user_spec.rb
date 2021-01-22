require "spec_helper"

describe Lakatan::User do
  it_behaves_like "find resource", 115 do
    it { expect(resource.id).to eq(resource_id) }
    it { expect(resource.name).to eq("Andrés Matte") }
    it { expect(resource.email).to eq("andres@platan.us") }
    it { expect(resource.created_at).to be_a(DateTime) }
    it { expect(resource.updated_at).to be_a(DateTime) }
    it { expect(resource.last_org).to be_nil }
    it { expect(resource.team_ids).to contain_exactly(96, 97, 103) }
  end

  it_behaves_like "all resources"
end
