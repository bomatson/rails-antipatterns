class Purchase < ActiveRecord::Base
  include Status

  has_statuses :in_progress, :submitted, :approved,
               :shipped, :received
end
