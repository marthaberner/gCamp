require 'spec_helper'

feature "Tasks" do
  scenario "User can create a task" do
    visit tasks_path
    click_link "New Task"
    fill_in "Description", with: "Do the thing"
    two_days_from_now = 2.days.from_now.to_date
    fill_in "Due Date", with: two_days_from_now.strftime("%Y/%m/%d")
    click_on "Create Task"

    expect(page).to have_content("Task was successfully created")
    expect(page).to have_content("Do the thing")
    expect(page).to have_content(two_days_from_now.strftime("%m/%d/%Y"))
  end

  scenario "User can view a task" do
    task = Task.create(
      description: "Do stuff",
      due_date: 2.days.from_now.to_date
    )

    date_due = task.due_date.strftime("%m/%d/%Y")
    visit tasks_path
    click_link "Show"

    expect(page).to have_content("Do stuff")
    expect(page).to have_content(date_due)
  end

end
