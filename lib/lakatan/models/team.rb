module Lakatan
  class Team < Lakatan::BaseModel
    declare_attribute(:name, :string)
    declare_attribute(:purpose, :string)
    declare_attribute(:created_at, :datetime)
    declare_attribute(:updated_at, :datetime)
    declare_attribute(:task_ids)
    declare_attribute(:user_ids)
    declare_collection(:tasks)
    declare_collection(:users)
  end
end
