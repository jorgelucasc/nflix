Quando("faço login com {string} e {string}") do |email, password|
  visit "/"
  find("#emailId").set email
  find("#passId").set password
  find click_button "Entrar"
  sleep 3
end
  
Então("devo ser autenticado") do
  js_script = 'window.localStorage.getItem("default_auth_token");'
  token = page.execute_script(js_script)
  puts token
end
Entao("devo ver {string} na area logada") do |string|
  pending
end