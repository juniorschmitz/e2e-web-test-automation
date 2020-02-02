Given("i access the login page") do
  @login_page = LoginPage.new
  @login_page.load
end

Given("login with email {string} and password {string}") do |email, password|
  @login_page.login_with(email, password)
end

Then("i should be logged in successfully") do
  expect(@login_page.header).to have_signed_in_name
end
