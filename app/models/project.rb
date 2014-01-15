# == Schema Information
#
# Table name: projects
#
#  id              :integer          not null, primary key
#  project_id      :integer
#  title           :string(255)
#  string          :string(255)
#  title_orig_lang :string(255)
#  summary         :string(255)
#  channel         :string(255)
#  amount          :string(255)
#  integer         :string(255)
#  implementer     :string(255)
#  cluster         :string(255)
#  npp             :string(255)
#  status          :string(255)
#  provinces       :string(255)
#  start_date      :date
#  end_date        :date
#  objective       :string(255)
#  results         :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Project < ActiveRecord::Base
  attr_accessible :amount, :channel, :cluster, :end_date, :implementer, :npp, :objective, :project_id, :provinces, :results, :start_date, :status, :summary, :title, :title_orig_lang
  has_and_belongs_to_many :locations, join_table: "loc_proc"
end
