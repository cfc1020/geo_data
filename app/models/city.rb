class City < ActiveRecord::Base
  belongs_to :country

  scope :include_associations, includes(:country)
end
