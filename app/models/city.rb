class City < ActiveRecord::Base
  belongs_to :country
  attr_writer :checked

  def checked
    @checked ||= false
  end

  scope :include_associations, includes(:country)
end
