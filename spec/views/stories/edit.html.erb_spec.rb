require 'rails_helper'

RSpec.describe "stories/edit", type: :view do
  before(:each) do
    @story = assign(:story, Story.create!(
      :title => "MyText",
      :user => nil,
      :link => "MyString"
    ))
  end

  it "renders the edit story form" do
    render

    assert_select "form[action=?][method=?]", story_path(@story), "post" do

      assert_select "textarea#story_title[name=?]", "story[title]"

      assert_select "input#story_user_id[name=?]", "story[user_id]"

      assert_select "input#story_link[name=?]", "story[link]"
    end
  end
end
