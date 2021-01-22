module Lakatan
  class Task < Lakatan::BaseModel
    declare_attribute(:name, :string)
    declare_attribute(:goal, :string)
    declare_attribute(:raffle_type, :string)
    declare_attribute(:label_id, :integer)
    declare_attribute(:team_id, :integer)
    declare_attribute(:user_minimum, :integer)
    declare_attribute(:created_at, :datetime)
    declare_attribute(:updated_at, :datetime)
    declare_nested_resource(:team)
  end
end
