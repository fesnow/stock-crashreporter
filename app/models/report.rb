class Report < ActiveRecord::Base
  rails_admin do
    list do
      field :guid
      field :ver
      field :platform
      field :process_type
      field :created_at
      field :updated_at
    end
  end
end
