# Steps that have been reused or might be reused later

Given('User is logged in') do
    login "test@example.com", "password"
    end

Given("User is on {string}") do |path|
    visit path
    end

When("User clicks on {string}") do |link|
    click_link link
    end

Then("User should see {string}") do |content|
    expect(page).to have_content content
    end

Then("User should be redirected to the dashboard") do
    expect(current_path).to eq '/dashboard'
    expect(page).to have_content "Admin Dashboard"
    end
