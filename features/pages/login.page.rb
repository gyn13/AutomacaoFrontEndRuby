class LoginPage < SitePrism::Page
    set_url 'https://www.saucedemo.com/'
    element :emailField, :id, "user-name"
    element :passwordField, :id, "password"
    element :loginButton, :id, "login-button"

    def userLogin(email, password)
        emailField.set (email)
        passwordField.set (password)
        loginButton.click
    end
end