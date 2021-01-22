require "spec_helper"

describe Lakatan::Team do
  it_behaves_like "find resource", 99 do
    it { expect(resource.id).to eq(resource_id) }
    it { expect(resource.name).to eq("Keepers of the seven keys") }
    it { expect(resource.purpose).to match(/Definir cómo se entregan accesos/) }
    it { expect(resource.created_at).to be_a(DateTime) }
    it { expect(resource.updated_at).to be_a(DateTime) }
    it { expect(resource.user_ids).to contain_exactly(139, 140, 148, 154) }
    it { expect(resource.task_ids).to eq([]) }
  end

  it_behaves_like "all resources"
end
