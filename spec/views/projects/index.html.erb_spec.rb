require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
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
      ),
      stub_model(Project,
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
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Title Orig Lang".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Channel".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Implementer".to_s, :count => 2
    assert_select "tr>td", :text => "Cluster".to_s, :count => 2
    assert_select "tr>td", :text => "Npp".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Provinces".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
