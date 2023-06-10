module StepHelper
  def create_user(email, password)
    User.create(name: email, email: email, password_digest: BCrypt::Password.create(password))
  end

  def enter_registration_details(name, email, password)
    fill_in 'user[name]', with: name
    fill_in 'user[email]', with: email
    fill_in 'user[password]', with: password
    fill_in 'user[password_confirmation]', with: password
  end

  def register_user(name, email, password)
    visit users_path
    click_link 'Register'
    enter_registration_details(name, email, password)
    click_button 'Register'
  end

  def enter_login_details(email, password)
    fill_in 'login[email]', with: email
    fill_in 'login[password]', with: password
  end

  def login(email, password)
    visit users_path
    click_link 'Login'
    enter_login_details(email, password)
    click_button 'Sign in'
  end
end