# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  state      :string(255)
#  latitude   :float
#  longitude  :float
#  gmaps      :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Location < ActiveRecord::Base
  attr_accessible :gmaps, :latitude, :longitude, :name, :state
  has_and_belongs_to_many :projects
end
