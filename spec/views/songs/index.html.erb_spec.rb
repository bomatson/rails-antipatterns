require 'spec_helper'

describe "songs/index" do
  before(:each) do
    assign(:songs, [
      stub_model(Song,
        :title => "Title",
        :genre => "Genre"
      ),
      stub_model(Song,
        :title => "Title",
        :genre => "Genre"
      )
    ])
  end

  it "renders a list of songs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Genre".to_s, :count => 2
  end
end
