require 'spec_helper'

feature "Tasks" do
  scenario "User can create a task" do
    visit tasks_path
    click_link "New Task"
    fill_in "Description", with: "Do the thing"
    fill_in "Due Date", with: "2015/06/05"
    click_on "Create Task"

    expect(page).to have_content("Do the thing")
    expect(page).to have_content("06/05/2015")
  end

end
