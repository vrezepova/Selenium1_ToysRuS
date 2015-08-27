## Navigation ##

$baseurl = "http://www.toysrus.com"



# def CloseChat
#   element = $driver.find_elements :xpath => "//a[@title = 'Close Chat Invitation']"
#   if element.count > 0
#     element[0].click
#   end
# end
#
# def ContinueSpoilerAlert
#   element = $driver.find_elements :xpath => "//div[@style = 'display: block;'][@id = 'mopalLightBox']//a[@id = 'mopalContinue']"
#   if element.count > 0
#     element[0].click
#   end
# end
#
# def CancelSpoilerAlert
#   element = $driver.find_elements :xpath => "//div[@style = 'display: block;'][@id = 'mopalLightBox']//a[@id = 'mopalCancel']"
#   if element.count > 0
#     element[0].click
#   end
# end
#
# def CloseSurvey
#   element = $driver.find_elements :xpath => "//a[@class = 'fsrDeclineButton']"
#   if element.count > 0
#     element[0].click
#   end
# end


# AfterStep do |scenario|
#   $driver.manage.timeouts.implicit_wait = 5
#   element = $driver.find_elements :xpath => "//a[@title = 'Close Chat Invitation']"
#   if element.count > 0
#     element[0].click
#   end
#   # element_1 = $driver.find_elements :xpath => "//a[@id = 'mopalContinue']"
#   # if element_1.count > 0
#   #   element_1[0].click
#   #   end
#   element_2 = $driver.find_elements :xpath => "//a[@class = 'fsrDeclineButton']"
#   if element_2.count > 0
#     element_2[0].click
#     else
#       puts "Everything is Ok"
#     end
# end

AfterStep do |scenario|
  $driver.manage.timeouts.implicit_wait = 5
  element = $driver.find_elements :xpath => "//a[@title = 'Close Chat Invitation']"
  element_1 = $driver.find_elements :xpath => "//div[@style = 'display: block;'][@id = 'mopalLightBox']//a[@id = 'mopalContinue']"
  element_2 = $driver.find_elements :xpath => "//a[@class = 'fsrDeclineButton']"
  element_3 = $driver.find_elements :xpath => "//div[@id = '_tealiumModalClose']"
  if element.count > 0
    element[0].click
  elsif element_1.count > 0
     element_1[0].click
  elsif element_2.count > 0
    element_2[0].click
  elsif element_3.count > 0
    element_3[0].click
  else
    puts "All Pop Ups Cleared - Good to Go!"
  end
end




# Then /^Open Site$/ do
#   $driver.get $baseurl
#   $driver.manage.window.maximize
#   sleep 5
# end

Then /^Go to the home page$/ do
  element = $driver.find_element :xpath => "//div[@id = 'hdrLogo']/a"
  element.click
end

Then /^Navigate back$/ do
  $driver.navigate.back
end


Then /^Click Twitter icon on the product page$/ do
  element = $driver.find_element :id => "tweetButton"
  element.click
end


Then /^Verify new page opens up$/ do
  $driver.window_handles.each do |handle|
    $driver.switch_to.window handle
  end
  element = $driver.find_elements :xpath => "//a[@class='alternate-context' and text() = 'Twitter']"
  if element.count > 0
    puts $driver.title
  end
end

Then /^Verify Twitter page opens up$/ do
  $driver.switch_to.window $driver.window_handles.last
  element = $driver.find_elements :xpath => "//a[@class='alternate-context' and text() = 'Twitter']"
  if element.count > 0
    puts $driver.title
  end
  if $driver.title != "Post a Tweet on Twitterrrr"
    raise "Title is not correct"
  end
end


# Then /^Go back to the previous page$/ do
#   $driver.window_handles.last do |handle|
#     $driver.switch_to.window handle
# end

# Then /^Click the Search field$/ do
#   element = $driver.find_element :xpath => "//input[@id = 'kw']"
#   element.click
# end

# Then /^Enter the key word dress into the Search field$/ do
#   element = $driver.find_element :xpath => "//input[@id = 'kw']"
#   element.click
#   element.clear
#   element.send_keys "dress"
#   element.submit
#   sleep 5
# end

Then /^Enter the key word ([^"]*) into the Search field$/ do |search|
  element = $driver.find_element :xpath => "//input[@id = 'kw']"
  element.click
  element.send_keys "#{search}"
end

Then /^Click Search button$/ do
  element = $driver.find_element :xpath => "//input[@id = 'goButton']"
  element.click
end

Then /^Verify if the item is the ([^"]*)$/ do |result|
  element = $driver.find_element :xpath => "//a[@class = 'prodtitle'][contains(text(),'#{result}')]"
end

# Then /^Verify the item name contains ([^"]*)$/ do |result1|
#   element = $driver.find_element :xpath => "//div[@id = 'lTitle']/h1[contains(text(), '#{result1}')]"
# end


# Then /^Check the rating of the item$/ do
#   element = $driver.find_element :xpath => "//div[@class = 'pr-stars pr-stars-small pr-stars-5-sm'][contains(text(), 'Perfect')]"
#   element = $driver.find_element :xpath => "//div[@class = 'prStars' and text() = '5.0 stars']"
# end


  #Create xpath that returns all items with the 5 starts rating that have Ship-to-home option available (Big Kids Sub category)

#
# xpath => "//a[@class = 'mainNavLink' and text() = \"#{box}\"]"
# #
#
# ul id="eligibility">
#    <li>Ship-To-Home</li>
# #
# <div class="prSnippet prSnippetLarge prStarsValue50">
# <div class="prSnippetEngine">
# <div class="prSnippetRatingUnclickable">
# <div class="prStars">5.0 stars</div>
# </div>

# <div class="prodloop_cont">
#
# "//*[[@class = 'prStars' and text() = '5.0 stars'] and ./*[@id = 'eligibility']/li['Ship-To-Home']]"
# $x("//*[contains(text(), 'Ship-To-Home')]")
# $x("//*[@class = 'prStars' and text() = '5.0 stars']")
# $x("//*[contains(text(), '5.0 stars')]")
# $x("//div[contains(text(), '5.0 stars')][contains(text(), 'Ship-To-Home')]")

##Lesson 6 HW
# ("//div[@class = 'prodloop_cont'][.//div[text() = '5.0 stars']][.//li[contains(text(), 'Free Store Pickup')]//a[@class = 'prodtitle']")
# ("//div[@class = 'prodloop_cont'][.//div[text() = '5.0 stars']][.//li[contains(text(), 'Free Store Pickup as Early as Today')]//a[@class = 'prodtitle']")
# ("//div[@class = 'prodloop_cont'][.//div[text() = '5.0 stars']][.//li[contains(text(), 'Ship-To-Home')]//a[@class = 'prodtitle']")
#
# ("//div[@class = 'prodloop_cont'][.//div[text() = '5.0 stars']][.//li[text() = 'Ship-To-Home']]//a[@class = 'prodtitle']")

#HW Lesson 7 (old)
#1. Go to the Big Kids Subcategory and print out list of items that are not available for Free Store Pickup
#("//div[@class = 'prodloop_cont'][.//li[@class = 'unavail noSts-ispu' and text() = 'Free Store Pickup']]//a[@class = 'prodtitle']")
#2. Go to the Big Kids Subcategory and print out list of available items that are not available for Free Store pick up with price 6.99
#("//div[@class = 'prodloop_cont'][.//li[@class = 'unavail noSts-ispu' and text() = 'Free Store Pickup']][.//span[@class='ourPrice2'and text() = '$6.99']]//a[@class = 'prodtitle']")
#3. Go to the Big Kids Subcategory and print out list of available items that have 5 stars review
#("//div[@class = 'prodloop_cont'][.//div[text() = '5.0 stars']]//a[@class = 'prodtitle']")

#HW Lesson 7 new
#3. Go to the Big Kids Subcategory and try to print out list of available items that have 4 stars review and are not available for the Free pick up
# ("//div[@class = 'prodloop_cont'][.//div[text() = '4.0 stars']][.//li[@class = 'unavail noSts-ispu' and text() = 'Free Store Pickup']]//a[@class = 'prodtitle']")

Then /^Choose available items that have 4 stars review and are not available for Free pick up$/ do
  element = $driver.find_element :xpath => "//div[@class = 'prodloop_cont'][.//div[text() = '4.0 stars']][.//li[@class = 'unavail noSts-ispu' and text() = 'Free Store Pickup']]//a[@class = 'prodtitle']"
end


# Then /^Choose items that have ([^']*) review and are not available for ([^']*) and print the results$/ do |rating, pickupOptions |
#   element = $driver.find_element :xpath => "//div[@class = 'prodloop_cont'][.//div[text() = '#{rating}']][.//li[@class = 'unavail noSts-ispu' and text() = '#{pickupOptions}']]//a[@class = 'prodtitle']"
#   # puts element[0].attribute("innerHTML")
# end




#User Account - related TC##

Then /^Click the MyAccountSignIn link on the top Nav bar$/ do
  element = $driver.find_element :xpath => "//span[@id='hdrWelcomeLoginText' and text() = 'My Account / Sign In']"
  element.click

end
Then /^Click the SignIn in the dropDown$/ do
  #element = $driver.find_element :xpath => "//a[text() =  'Sign In']"
  element = $driver.find_element :xpath => "//div[@class='tipcontent']/span/a[contains(text(),'Sign In')]"
  element.click

end
Then /^Enter Valid information into new email field$/ do
  element = $driver.find_element :id => "emailAddExmpl"
  element.send_keys "wezvfv@mail.ru"
end
Then /^Enter valid information into new password field$/ do
  element = $driver.find_element :xpath => "//input[@id='passwrd']"
  element.send_keys "Aa5277929"
end
Then /^Enter valid information into verify password field$/ do
  element = $driver.find_element :xpath => "//input[@id='confPasswrd']"
  element.send_keys "Aa5277929"
end
Then /^Click the “SignIn” button$/ do
  element = $driver.find_element :xpath => "//input[@id='signUpButton']"
  element.click

end

Then /^Expected result: User is signed in$/ do
  element = $driver.find_element :xpath => "//span[@class='loggedIn'][contains(text(), 'Welcome')]"
end


Then /^User LogOut$/ do
  element = $driver.find_elements :xpath => "//span[@class='loggedIn']"
  if element.count > 0
    element[0].click
    element = $driver.find_element :xpath => "//div[@class='tipcontent']/span/a[contains(text(), 'Sign Out']"
    element.click
  end
end

Then /^Enter Valid information into existing email field$/ do
  element = $driver.find_element :id => "emailId"
  element.send_keys "vichok1978@mail.ru"
end

Then /^Enter valid information into existing  password field$/ do
  element = $driver.find_element :id => "passwd"
  element.send_keys "Aa5277929"
end

Then /^Click the “SignIn” button for returning customers$/ do
  element = $driver.find_element :xpath => "//input[@class ='signIn']"
  element.click

end




## Picking Categories ##

Then /^Click the category ([^"]*)$/ do |box|
  element = $driver.find_element :xpath => "//a[@class = 'mainNavLink' and text() = \"#{box}\"]"
  element.click
end

Then /^Click the Category ([^"]*) and then Narrow by the subcategory ([^"]*)$/ do |box, box2|
  element = $driver.find_element :xpath => "//a[@class = 'mainNavLink' and text() = '#{box}']"
  element.click
  element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a[text() = '#{box2}']"
  element.click
end

Then /^Click the Clearance category$/ do
  element = $driver.find_element :xpath => "//a[@class = 'mainNavLink clearance' and text() = 'Clearance']"
  element.click
end

Then /^Click link the Brand Featured subcategory ([^"]*)$/ do |box|
  element = $driver.find_element :xpath => "//a[@title = '#{box} - Shop by brand']"
  element.click
end

Then /^Click image the Brand Featured subcategory ([^"]*)/ do |box|
  element = $driver.find_element :xpath => "//img[@alt = '#{box}']"
  element.click
end

Then /^Narrow by the category ([^"]*)$/ do |box|
  element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a[contains(text(), '#{box}')]"
  element.click
end


Then /^Click Name of the Featured subcategory ([^"]*)$/ do |box|
  element = $driver.find_element :xpath =>  "//a[@class = 'featured-category-link' and text() = '#{box}']"
  element.click
end




##Cart: Picking and removing items""

Then /^Pick the ([^"]*) item$/ do |s|
  element = $driver.find_element :xpath => "(//img[@class = 'swatchProdImg'])[#{s}]]"
  element.click
end

Then /^Pick the item N ([^"]*)$/ do |x|
  element = $driver.find_element :xpath => "(//img[@class = 'swatchProdImg'])[#{x}]"
  element.click
end

Then /^Pick the item ([^"]*) for Quick Shop$/ do |x|
  element = $driver.find_element :xpath => "(//img[@class = 'swatchProdImg'])[#{x}]"
  $driver.mouse.move_to element
  # element = $driver.find_element :xpath => "(//img[@class = 'swatchProdImg'])[#{x}]"
  element = $driver.find_element :xpath => "//div[@id = 'expressShopButton0' and text() = 'Quick Shop']"
  element.click
end


Then /^Click remove item$/ do
  element = $driver.find_element :id => "remove-1"
  element.click
end

Then /^Click the button Add item to the Cart$/ do
  wait = Selenium::WebDriver::Wait.new(:timeout => 20)
  wait.until {element = $driver.find_element :id => "cartAddition" }
  element = $driver.find_element :id => "cartAddition"
  element.click
end

Then /^Click the button Add to the Cart at Quick Shop$/ do
  element = $driver.find_element :id => "launchStore"
  element.click
end

Then /^Click Cart$/ do
  element = $driver.find_element :xpath => "//a[@class = 'cartButton']"
  element.click
end

Then /^Change quantity to ([^"]*)$/ do |number|
  element = $driver.find_element :xpath => "//input[@id = 'quantity']"
  element.clear
  element.send_keys "#{number}"
end


Then /^Verify the only item was removed from the Cart$/ do
  element = $driver.find_element :xpath => "//span[@class = 'cartItemCount' and text() = 0]"
end

Then /^Verify ([^"]*) identical items were added to the Cart$/ do |box|
  element = $driver.find_element :xpath => "//input[@class = 'quantity cartQtyValue'][@value = #{box}]"
end


Then /^Verify ([^"]*) items are in the Cart$/ do |box|
    element = $driver.find_element :xpath => "//span[@class = 'cartItemCount' and text() = #{box}]"
end


Then /^Narrow by the subcategory ([^"]*)$/ do |box|
  element = $driver.find_element :xpath => "//div[@class = 'filter_multiselectAttrib']/a[text() = '#{box}']"
  element.click
end


Then /^Click ([^"]*) navigation link$/ do |link|
  element = $driver.find_element :xpath => "//a[@class = 'liText' and text() = '#{link}']"
  element.click
end

Then /^Verify you've landed to the Weekly Ad page$/ do
  # element = $driver.find_element :xpath => "//h2[@class = 'twd_h5']/a[text() = 'Weekly Ad']"
  if $driver.title == "Toys\"R\"Us Savings Center, Current Deals, Sales, Clearance Items"
  puts "We've landed on the Weekly Adds page"
    end
end

Then /^Verify you've landed to the Gift Finder page$/ do
  # element = $driver.find_element :xpath => "//h1[@class = 'twd_text_centeredOnMobile' and text() = 'Gift Ideas for Kids']"
  if $driver.title == "Top Gift Ideas for Kids, Boys, Girls, Baby - Toys\"R\"Us Gift Finder"
    puts "We've landed on the Gift Finder page"
  end
end

Then /^Click Results per page dropdown and chose ([^"]*)$/ do |number|
  select = Selenium::WebDriver::Support::Select.new($driver.find_element :xpath =>"//select[@id='ppg']")
  select.select_by :value, "#{number}"
end

Then /^Print out results$/ do
  element = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont'][.//div[text() = '4.0 stars']][.//li[@class = 'unavail noSts-ispu' and text() = 'Free Store Pickup']]//a[@class = 'prodtitle']"
      puts element[0].attribute("innerHTML")
end

Then /^Sort by price Low to High$/ do   #Select needs to be declared in each test case
  select = Selenium::WebDriver::Support::Select.new($driver.find_element :xpath =>"//select[@id='s']")
  select.select_by :value, 'A-StorePrice'
end

Then /^Sort by price High to Low$/ do
  select = Selenium::WebDriver::Support::Select.new($driver.find_element :xpath =>"//select[@id='s']")
  select.select_by :value, 'D-StorePrice'
end

Then /^Choose the items with price 199.99 and print the results$/ do
  element = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont'][.//span[text() = '$199.99']]//a[@class = 'prodtitle']"
  puts element[0].attribute("innerHTML")
end

Then /^Print results$/ do
  elements = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont'][.//div[text() = '4.0 stars']][.//li[@class = 'unavail noSts-ispu' and text() = 'Free Store Pickup']]//a[@class = 'prodtitle']"
  for each_element in elements do
  puts each_element.text
  end
  end

Then /^Print results - prices$/ do
  elements = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont']//span[@class = 'ourPrice2']"
  for each_element in elements do
    puts each_element.text
  end
end

Then /^Print results - item names/ do
  elements = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont']//a[@class = 'prodtitle']"
  for each_element in elements do
    puts each_element.text
  end
end



# Then /^I create simple loop$/ do
#   elements = $driver.find_elements :xpath => "//a[@class = 'results pageNumber']"
#   puts "#{elements.text}"
#   sleep 5
#   numpages = elements.count-2
#   for e in 2..numpages do
#     element = $driver.find_element :xpath => "//a[@class = 'results pageNumber' and text() = '#{e}']"
#     sleep 2
#     element.click
#     puts "#{e}"
#   end
# end


Then /^I create simple loop$/ do
  elements = $driver.find_elements :xpath => "//a[@class = 'results pageNumber']"
  puts elements.text
  #  puts elements[0].attribute("innerHTML")
  #  puts elements[1].attribute("innerHTML")
  #  puts elements[2].attribute("innerHTML")
  # sleep 5
  numpages = elements.count-2
  for e in 2..numpages do
    element = $driver.find_element :xpath => "//a[@class = 'results pageNumber' and text() = '#{e}']"
    sleep 2
    element.click
    puts "#{e}"
  end
end



Then /^Click Enter$/ do
  $driver.find_element(:xpath,"//input[@id = 'goButton']").send_keys :return
end


Then /^Create loop that goes through pages and prints out 5 star elements, if page has more then 3 elements with 5 stars$/ do

  each_element = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont'][.//div[text() = '5.0 stars']]//a[@class = 'prodtitle']"
  stars = each_element.count
  if stars >= 3
    for i in each_element do
      puts i.attribute("innerHTML")
    end
 # raise "The page does not meet requirements! The number of FiveStar items is 0!"
  end

  elements = $driver.find_elements :xpath => "//a[@class = 'results pageNumber']"
  numpages = elements.count-2
   for e in 2..numpages do
     element = $driver.find_element :xpath => "//a[@class = 'results pageNumber'and text() = '#{e}']"
     sleep 10
     element.click
     puts "#{e}"
    each_element = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont'][.//div[text() = '5.0 stars']]//a[@class = 'prodtitle']"
    stars = each_element.count
    if stars >= 3
      for i in each_element do
        puts i.attribute("innerHTML")
      end
      # raise "The page does not meet requirements! The number of FiveStar items is ---!"
   end
   end
  end


Then /^Find items with 4 stars on the page and print total items from all pages$/ do
  pages = $driver.find_elements :xpath => "//div[@id = 'pagination']//a[@class = 'results pageNumber']"
  totalpages =pages.count-1
  sleep 6

  totalitems = 0
  for i in 0..totalpages do
    sleep 5
    items = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont'][.//div[text() = '4.0 stars']]//a[@class = 'prodtitle']"
    puts items.map  {|n| n.attribute("innerHTML")}
    totalitems += items.count
    puts totalitems
    pages = $driver.find_elements :xpath => "//div[@id = 'pagination']//a[@class = 'results pageNumber']"
    pages[i].click
  end
  items = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont'][.//div[text() = '4.0 stars']]//a[@class = 'prodtitle']"
  totalitems += items.count
  puts totalitems
end





Then /^Choose the Category ([^"]*) subcategory named ([^"]*) via mouse hovering$/ do |box, box1|
  element = $driver.find_element :xpath => "//a[@class = 'mainNavLink' and text() = '#{box}']"
  sleep 10
  $driver.mouse.move_to element
  # element = $driver.find_element :xpath => "//a[@class = 'hdrMenuCat' and text() = '#{box1}']"
  element = $driver.find_element :xpath => "//div[@class = 'col1'][./h2/a]//a[@class = 'hdrMenuCat' and text()= '#{box1}']"
  element.click
end






# Then /^Click Continue to Close spoiler alert$/ do
#   element = $driver.find_elements :xpath => "//a[@id = 'mopalContinue']"
#   if element.count > 0
#     element[0].click
#   end
# end

# Then /^Click Cancel in spoiler alert$/ do
#   element = $driver.find_elements :xpath => "//a[@id = 'mopalCancel']"
#   if element.count > 0
#     element[0].click
#   end
# end


# Then /^Click GiftFinder link$/ do
#   element = $driver.find_element :xpath => "//a[@class = 'liText' and text() = 'Gift Finder']"
#   element.click
#   sleep 15
# end

#
# Then /^Verify 2 items are in the Cart$/ do
#   element = $driver.find_element :xpath => "//span[@class = 'cartItemCount' and text() = 2]"
#   sleep 5
# end



# Then /^Verify 1 items are in the Cart$/ do
#   element = $driver.find_element :xpath => "//span[@class = 'cartItemCount' and text() = 1]"
#   sleep 5
# end


#
# Then /^Click the Brand subsubcategory Electronics$/ do
#   element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a[text() = 'Electronics']"
#   element.click
#   sleep 15
# end


#
# Then /^Click the Brand subcategory Lego$/ do
#   element = $driver.find_element :xpath => "//img[@alt = 'LEGO']"
#   element.click
#   sleep 15
#
# end

# Then /^Click the Brand subcategory Fast Lane$/ do
#   element = $driver.find_element :xpath => "//a[@title = 'Fast Lane - Shop by brand']"
#   element.click
#   sleep 15
# end


# Then /^Narrow by Clearance subcategory ([^"]*)/ do |box|
#   element = $driver.find_element :xpath =>  "//div[@class = 'sliderWrapper']/p/a[text() = '#{box}']"
#   element.click
#   sleep 15
# end

# Then /^Click the Age subcategory ([^"]*)$/ do |box|
#   element = $driver.find_element :xpath =>  "//div[@class = 'sliderWrapper']/p/a [text() = '#{box}']"
#   element.click
#   sleep 15
# end



# Then /^Click the category Brand$/ do
#   #element = $driver.find_element :xpath => "//a[text() = 'ToysRUs']"
#   #element.click
#   element = $driver.find_element :xpath => "//a[@class = 'mainNavLink' and text() = 'Brand']"
#   element.click
#   sleep 15
# end

# Then /^Pick the item N 1$/ do
#   element = $driver.find_element :xpath => "(//img[@class = 'swatchProdImg'])[1]"
#   element.click
#   sleep 15
# end
#
# Then /^Pick the item N 2$/ do
#   element = $driver.find_element :xpath => "(//img[@class = 'swatchProdImg'])[2]"
#   element.click
#   sleep 15
# end

# Then /^Pick the item N 3$/ do
#   element = $driver.find_element :xpath => "(//img[@class = 'swatchProdImg'])[3]"
#   element.click
#   sleep 15
# end

# Then /^Click the category Girls Toys$/ do
#   element = $driver.find_element :xpath => "//a[@class = 'mainNavLink' and text() = \"Girls' Toys\"]"
#   element.click
#   sleep 15
# end
#
# Then /^Click the Age subcategory Big Kids$/ do
#   element = $driver.find_element :xpath =>  "//div[@class = 'sliderWrapper']/p/a [text() = 'Big Kids']"
#   element.click
#   sleep 5
# end
#
# Then /^Click the Age subcategory 5-7 Years$/ do
#   element = $driver.find_element :xpath =>  "//div[@class = 'sliderWrapper']/p/a [text() = '5 - 7 Years']"
#   element.click
#   sleep 5
# end



#Then /^Close Site$/ do
#   $driver.close
# end


#
# Then /^Click the category Age$/ do
#   $driver.get "http://www.toysrus.com"
#   $driver.manage.window.maximize
#   element = $driver.find_element :xpath => "//a[@class = 'mainNavLink' and text() = 'Age']"
#   element.click
# end
#
# Then /^Click the category Brand/ do
#   $driver.get "http://www.toysrus.com"
#   element = $driver.find_element :xpath => "//a[@class = 'mainNavLink' and text() = 'Brand']"
#   element.click
#   sleep 6
# end
#
#
# Then /^Click the category Clearance/ do
#   element = $driver.find_element :xpath => "//a[@class = 'mainNavLink clearance' and text() = 'Clearance']"
#   element.click
#   sleep 5
# end
#
# Then /^Click the subcategory Big Kids$/ do
#   element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a[text() = 'Big Kids']"
#   element.click
#   sleep 5
# end
#
# Then /^Click the Brand subsubcategory $/ do
#   element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a[text() = 'NEW LEGO']"
#   element.click
#   sleep 5
# end
#
# Then /^Click the subcategory Electronics$/ do
#   element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a[text() = 'Electronics']"
#   element.click
#   sleep 5
# end
#
# Then /^Click the subcategory Avigo$/ do
#   element = $driver.find_element :xpath => "//img[@alt = 'Avigo']"
#   element.click
#   sleep 6
# end
#
# Then /^Click the subcategory LEGO/ do
#   element = $driver.find_element :xpath => "//img[@alt = 'LEGO']"
#   element.click
#   sleep 6
# end
#
# Then /^Pick the item$/ do
#   element = $driver.find_element :xpath => "(//img[@class='swatchProdImg'])[3]"
#   element.click
#   sleep 5
# end
#
#
# Then /^Click the button Add Item to the Cart$/ do
#   element = $driver.find_element :id => "cartAddition"
#   element.click
#   sleep 6
# end
#
#
# Then /^Verify that item was added to the cart$/ do
#   $driver.find_element :xpath => "//span[@class = 'cartItemCount' and text() = '1']"
# end
#
# Then /^Verify that 2 items was added to the cart$/ do
#   $driver.find_element :xpath => "//span[@class = 'cartItemCount' and text() = '2']"
# end
#
# Then /^Navigate back$/ do
#   $driver.navigate.back
#   sleep 6
# end
#
#
# Then /^Change qty$/ do
#   element = $driver.find_element :xpath => "//input[@id = 'quantity']"
#   element.clear
#   element.send_keys "2"
#   sleep 6
# end
#
# Then /^Go back to the home page$/ do
#   element = $driver.find_element :xpath => "//div[@id = 'hdrLogo']/a"
#   element.click
#   sleep 6
# end
#
#









# Then /I LogIn in Facebook$/ do
#   driver = $driver
#   driver.get "https://www.facebook.com"
#
#   element = driver.find_element :id => "email"
#   element.send_keys "marina@yahoo.com"
#
#   # (driver.find_element :id => email).send_keys "marina@yahoo.com"
#
#   element = driver.find_element :id => "pass"
#   element.send_keys "1234"
#   element = driver.find_element :id => "loginbutton"
#   element.click
#   sleep 2
# end