# == Schema Information
#
# Table name: projects
#
#  id              :integer          not null, primary key
#  project_id      :integer
#  title           :string(255)
#  title_orig_lang :string(255)
#  summary         :text
#  channel         :string(255)
#  amount          :string(255)
#  implementer     :string(255)
#  cluster         :string(255)
#  npp             :string(255)
#  status          :string(255)
#  provinces       :string(255)
#  start_date      :date
#  end_date        :date
#  objective       :text
#  results         :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  gmaps_location  :string(255)
#

class Project < ActiveRecord::Base
  attr_accessible :amount, :channel, :cluster, :end_date, :implementer, :npp, :objective, :project_id, :provinces, :results, :start_date, :status, :summary, :title, :title_orig_lang
  attr_accessible :gmaps_location
  attr_accessible :locations, :location_ids, :location_attributes

  has_many :location_projects
  has_many :locations, :through => :location_projects
  accepts_nested_attributes_for :locations
  
end
