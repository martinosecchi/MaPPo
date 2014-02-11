# == Schema Information
#
# Table name: location_projects
#
#  id          :integer          not null, primary key
#  location_id :integer
#  project_id  :integer
#

class LocationProject < ActiveRecord::Base
  attr_accessible :proj_id, :loc_id
  belongs_to :location
  belongs_to :project
end
