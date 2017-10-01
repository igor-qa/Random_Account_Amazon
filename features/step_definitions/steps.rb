

Then /^Open Amazon$/ do
  $driver.get "https://www.amazon.com/"
  $driver.manage.window.maximize
  sleep 2
end

Then /^Click button sign in$/ do
  element = $driver.find_element :xpath => "(//span[@class='nav-action-inner' and text()='Sign in'])[2]"
  element.click
  sleep 2
end

Then /^Click create new account$/ do
  element = $driver.find_element :id => "createAccountSubmit"
  element.click
  sleep 2
end
Then /^Type random name$/ do
  value = ""; 8.times{value  << (65 + rand(25)).chr}
  element = $driver.find_element :id => "ap_customer_name"
  element.send_keys value
end
Then /^Type email random email$/ do
  value = ""; 8.times{value  << (65 + rand(25)).chr}
  element = $driver.find_element :id => "ap_email"
  element.send_keys value + "@ya.ru"
end

Then /^Type random password$/ do
  value = ""; 8.times{value  << (65 + rand(25)).chr}
  element = $driver.find_element :xpath => "//*[@id='ap_password']"
  element.send_keys value
  element = $driver.find_element :xpath => "//*[@id='ap_password_check']"
  element.send_keys value
end

Then /^Create amazon account$/ do
  element = $driver.find_element :id => "continue"
  element.click
  sleep 2
end

Then /^Verify new created account$/ do
  element = $driver.find_element :xpath => "//p[@class='hud-profilecard-yourorders-title' and text()='YOUR ORDERS']"
  element.close
end
