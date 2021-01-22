module Lakatan
  class User < Lakatan::BaseModel
    declare_attribute(:name, :string)
    declare_attribute(:email, :string)
    declare_attribute(:created_at, :datetime)
    declare_attribute(:updated_at, :datetime)
    declare_attribute(:last_org, :integer)
    declare_attribute(:team_ids)

    def teams
      Lakatan::Team.all.select { |team| team_ids.include?(team.id) }
    end
  end
end
