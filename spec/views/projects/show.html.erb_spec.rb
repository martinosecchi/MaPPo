require 'spec_helper'

describe "projects/show" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :project_id => 1,
      :title => "Title",
      :title_orig_lang => "Title Orig Lang",
      :summary => "MyText",
      :channel => "Channel",
      :amount => 2,
      :implementer => "Implementer",
      :cluster => "Cluster",
      :npp => "Npp",
      :status => "Status",
      :provinces => "Provinces",
      :objective => "MyText",
      :results => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Title/)
    rendered.should match(/Title Orig Lang/)
    rendered.should match(/MyText/)
    rendered.should match(/Channel/)
    rendered.should match(/2/)
    rendered.should match(/Implementer/)
    rendered.should match(/Cluster/)
    rendered.should match(/Npp/)
    rendered.should match(/Status/)
    rendered.should match(/Provinces/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
