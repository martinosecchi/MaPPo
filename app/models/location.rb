# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  country    :string(255)
#  latitude   :float
#  longitude  :float
#  gmaps      :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Location < ActiveRecord::Base
	acts_as_gmappable
  attr_accessible :gmaps, :latitude, :longitude, :name, :country
  
  has_many :location_projects
  has_many :projects, :through => :location_projects

  validates :country, :presence => true
  validates :name, :presence => true

  def gmaps4rails_address
  		"#{name}, #{country}"
  end

  #def gmaps4rails_infowindow
 	#	"<p>#{name}, #{country}</p>"
  #end
end
