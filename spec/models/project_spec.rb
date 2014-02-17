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
#

require 'spec_helper'

describe Project do
  pending "add some examples to (or delete) #{__FILE__}"
end
