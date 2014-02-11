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
	acts_as_gmappable
  attr_accessible :gmaps, :latitude, :longitude, :name, :state
  
  has_many :location_projects
  has_many :projects, :through => :location_projects

  def gmaps4rails_address
  		"#{name}, #{state}"
  end

  #def gmaps4rails_infowindow
 	#	"<p>#{name}, #{state}</p>"
  #end
end
