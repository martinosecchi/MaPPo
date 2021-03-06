require 'spec_helper'

describe "locations/show" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :name => "Name",
      :country => "Country",
      :latitude => 1.5,
      :longitude => 1.5,
      :gmaps => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Country/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/false/)
  end
end
