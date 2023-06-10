Given(/^I am on the new post page$/) do
    visit new_post_path
end

When("I fill in {string} with {string}") do |field, value|
    fill_in field, with: value
end
  
When("I attach the file {string} to {string}") do |file_name, field|
    attach_file(field, Rails.root.join('spec', 'fixtures', file_name))
end

When("I click the {string} button") do |button|
    click_button button
end
  
Then("I should be on the show post page") do
    expect(page).to have_current_path(post_path(Post.last))
end
