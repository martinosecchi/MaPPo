require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :project_id => 1,
      :title => "MyString",
      :title_orig_lang => "MyString",
      :summary => "MyText",
      :channel => "MyString",
      :amount => 1,
      :implementer => "MyString",
      :cluster => "MyString",
      :npp => "MyString",
      :status => "MyString",
      :provinces => "MyString",
      :objective => "MyText",
      :results => "MyText"
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path(@project), :method => "post" do
      assert_select "input#project_project_id", :name => "project[project_id]"
      assert_select "input#project_title", :name => "project[title]"
      assert_select "input#project_title_orig_lang", :name => "project[title_orig_lang]"
      assert_select "textarea#project_summary", :name => "project[summary]"
      assert_select "input#project_channel", :name => "project[channel]"
      assert_select "input#project_amount", :name => "project[amount]"
      assert_select "input#project_implementer", :name => "project[implementer]"
      assert_select "input#project_cluster", :name => "project[cluster]"
      assert_select "input#project_npp", :name => "project[npp]"
      assert_select "input#project_status", :name => "project[status]"
      assert_select "input#project_provinces", :name => "project[provinces]"
      assert_select "textarea#project_objective", :name => "project[objective]"
      assert_select "textarea#project_results", :name => "project[results]"
    end
  end
end
