
Feature: Acceptance test
  #1

  Scenario:  Add one item to the cart
    Then Click the category Age
    Then Narrow by the category 12 - 14 Years
    Then Pick the 3 item
    Then Click the button Add item to the Cart
    Then Verify 1 items are in the Cart

   #1a
  Scenario:  Add an item to the cart
    Then Click the Category Age and then Narrow by the subcategory Big Kids
    Then Pick the 5 item
    Then Click the button Add item to the Cart
    Then Verify 1 items are in the Cart

   #1b
  Scenario:  Add an item via Quick Shop
    Then Click the Category Age and then Narrow by the subcategory Big Kids
    Then Pick the item 5 for Quick Shop
    Then Click the button Add to the Cart at Quick Shop
    Then Verify 1 items are in the Cart


 #2

  Scenario: Add two items to the cart for category Brand from different subcategories
    Then Click the category Brand
    Then Click image the Brand Featured subcategory Hot Wheels
    Then Pick the 6 item
    Then Click the button Add item to the Cart
    Then Go to the home page
    Then Click the category Brand
    Then Click link the Brand Featured subcategory Fast Lane
    Then Pick the 3 item
    Then Click the button Add item to the Cart
    Then Verify 2 items are in the Cart

 #2a
  Scenario: Add three items to the cart for category Brand from different subcategories
    Then Click the category Brand
    Then Click image the Brand Featured subcategory LEGO
    Then Narrow by the category NEW LEGO
    Then Pick the 2 item
    Then Click the button Add item to the Cart
    Then Go to the home page
    Then Click the category Brand
    Then Click image the Brand Featured subcategory Nintendo
    Then Pick the 3 item
    Then Click the button Add item to the Cart
    Then Navigate back
    Then Navigate back
    Then Click link the Brand Featured subcategory Crayola
    Then Narrow by the category Activity Kits
    Then Pick the 1 item
    Then Click the button Add item to the Cart
    Then Verify 3 items are in the Cart

 #3

  Scenario: Add two identical items to the cart for category Clearance
  Then Click the Clearance category
  Then Narrow by the category Books, Music & DVDs
  Then Pick the 6 item
  Then Change quantity to 2
  Then Click the button Add item to the Cart
  Then Click Cart
  Then Verify 2 identical items were added to the Cart

  #4

Scenario: Add one item from the category Age and one item from the category Brand
  Then Click the category Age
  Then Narrow by the category Big Kids
  Then Pick the 5 item
  Then Click the button Add item to the Cart
  Then Go to the home page
  Then Click the category Brand
  Then Click image the Brand Featured subcategory LEGO
  Then Narrow by the category NEW LEGO
  Then Pick the 6 item
  Then Click the button Add item to the Cart
  Then Verify 2 items are in the Cart

  #5

 Scenario: Remove item from the Cart
   Then Click the category Age
   Then Narrow by the category Big Kids
   Then Pick the 5 item
   Then Click the button Add item to the Cart
   Then Click Cart
   Then Click remove item
   Then Verify the only item was removed from the Cart

  #6

 Scenario: Add two identical items to the cart for category Age Subcategory 5-7 years old
  Then Click the category Age
  Then Narrow by the category 5 - 7 Years
  Then Pick the 2 item
  Then Change quantity to 2
  Then Click the button Add item to the Cart
  Then Click Cart
  Then Verify 2 identical items were added to the Cart


  #7

  Scenario: Add the third item to the cart for category Girls toys "8-11" years old
    Then Click the category Girls' Toys
    Then Narrow by the subcategory 8-11 Years
    Then Pick the 3 item
    Then Click the button Add item to the Cart
    Then Verify 1 items are in the Cart


  #8

 Scenario: Add two items from the category Clearance subcategory Action Figures
   Then Click the Clearance category
   Then Narrow by the category Action Figures
   Then Pick the item N 5
   Then Click the button Add item to the Cart
   Then Verify 1 items are in the Cart
   Then Navigate back
   Then Pick the item N 6
   Then Click the button Add item to the Cart
   Then Click Cart
   Then Verify 2 items are in the Cart

 #9

  Scenario: Check navigation to the Weekly Ad page
   Then Click Weekly Ad navigation link
   Then Verify you've landed to the Weekly Ad page

  #10

  Scenario: Check navigation to the Gift Finder page
  Then Click Gift Finder navigation link
  Then Verify you've landed to the Gift Finder page

#11

  Scenario: Search for the items with the name Dress
    Then Enter the key word Dress into the Search field
    Then Click Search button
    Then Verify if the item is the Dress


#12

#  Scenario: Create xpath for that can identify item with 5 stars review
#  Then Click the category Age
#  Then Narrow by the subcategory Birth-12 Months
#  Then Pick the 4 item
#  Then Check the rating of the item

#13

  Scenario: Register user
  Then Click the MyAccountSignIn link on the top Nav bar
  Then Click the SignIn in the dropDown
  Then Enter Valid information into new email field
  Then Enter valid information into new password field
  Then Enter valid information into verify password field
  Then Click the “SignIn” button
  Then Expected result: User is signed in

#14
  Scenario: Registered user SignIn
    Then Click the MyAccountSignIn link on the top Nav bar
    Then Click the SignIn in the dropDown
    Then Enter Valid information into existing email field
    Then Enter valid information into existing  password field
    Then Click the “SignIn” button for returning customers
    Then Expected result: User is signed in


#15

   Scenario: Add item without Gift Packaging - Continue at Spoiler Alert
     Then Click the category Bikes, Scooters & Ride-Ons
     Then Narrow by the category Riding Toys & Pedal Cars
     Then Narrow by the category Pedal Cars
     Then Pick the item N 1
     Then Click the button Add item to the Cart
     #Then Click Continue to Close spoiler alert
     Then Verify 1 items are in the Cart


#16

#  Scenario: Add item without Gift Packaging - Cancel at Spoiler Alert
#    Then Click the category Bikes, Scooters & Ride-Ons
#    Then Narrow by the category Riding Toys & Pedal Cars
#    Then Narrow by the category Pedal Cars
#    Then Pick the item N 1
#    Then Click the button Add item to the Cart
#    #Then Click Cancel in spoiler alert
#    Then Verify 0 items are in the Cart


#17

    Scenario: Print out the list of available items that have "4" stars review and are not available for Free pick up
    Then Click the Category Age and then Narrow by the subcategory Big Kids
    Then Choose available items that have 4 stars review and are not available for Free pick up
    Then Print results


#18

#  Scenario: Print out the list of available items that have 4 stars review and are not available for Free pick up
#    Then Click the Category Age and then Narrow by the subcategory Big Kids
#    Then Choose items that have 4.0 stars review and are not available for Free Store Pickup and print the results


#19

  Scenario: Click Twitter while adding an item to the cart
  Then Click the Category Age and then Narrow by the subcategory Big Kids
  Then Pick the item N 1
  Then Click Twitter icon on the product page
#  Then Verify new page opens up
   Then Verify Twitter page opens up


#20
  Scenario:  Print the items prices, ordered by Price for the first page of Big Kids subcategory
    Then Click the Category Age and then Narrow by the subcategory Big Kids
    Then Click Results per page dropdown and chose 72
    Then Sort by price Low to High
    Then Print results - prices


#21
  Scenario:  Print the items prices, ordered by Price for the first page of Big Kids subcategory
    Then Click the Category Age and then Narrow by the subcategory Big Kids
    Then Click Results per page dropdown and chose 96
    Then Sort by price High to Low
    Then Print results - prices


#22
  Scenario:  Print the items prices for items with price more than 199.99 ordered by Price from High to Low
    Then Click the Category Age and then Narrow by the subcategory Big Kids
    Then Click Results per page dropdown and chose 96
    Then Sort by price High to Low
    Then Choose the items with price 199.99 and print the results


#23
  Scenario: I create simple loop
    Then Click the Category Age and then Narrow by the subcategory Big Kids
    Then I create simple loop



#24
  Scenario: Search for Dress in the Search field and click Enter
    Then Enter the key word Dress into the Search field
    Then Click Enter
    Then Print results - item names
    Then Verify if the item is the Dress

 #25

  Scenario: I create a HW loop
    Then Click the Category Age and then Narrow by the subcategory 5 - 7 Years
Then Find items with 4 stars on the page and print total items from all pages
# Then Create loop that goes through pages and prints out 5 star elements, if page has more then 3 elements with 5 stars


#26
    Scenario: Pick the item via mouse hover
      Then Choose the Category Age subcategory named Big Kids via mouse hovering
      Then Click Results per page dropdown and chose 96
      Then Sort by price High to Low
      Then Choose the items with price 199.99 and print the results



#11

#  Scenario: Search for items with the name Dress
#  Then Enter the key word Dress into the Search field
#  Then Click Search button
#  Then Narrow by the subcategory 8-11 Years
#  Then Pick the item N 1
#  Then Verify if the item is the Dress






#Feature: Acceptance test
# #1
#  Scenario: Add item to the cart
#
#    Then Click the category Age
#    Then Click the subcategory Big Kids
#    Then Pick the item
#    Then Click the button Add Item to the Cart
#    Then Verify that item was added to the cart
#
#
# #2
#  Scenario: Add Item to the cart from 2 different subcategories under category Brand
#
#    Then Click the category Brand
#    Then Click the subcategory Avigo
#    Then Pick the item
#    Then Click the button Add Item to the Cart
#    Then Navigate back
#    Then Navigate back
#    Then Click the subcategory LEGO
#    Then Click the Subsubcategory
#    Then Pick the item
#    Then Click the button Add Item to the Cart
#    Then Verify that 2 items was added to the cart
#
#
##  #3
##  Scenario: Add 2 identical items from the category Clearance
##
##    Then Click the category Clearance
##    Then Click the subcategory Electronics
##    Then Pick the item
##    Then Click the button Add Item to the Cart
##    Then Click the button Add Item to the Cart
##    Then Verify that 2 items was added to the cart
#
# #4
#  Scenario: Add 2 identical items from the category Clearance    - option 2
#
#    Then Click the category Clearance
#    Then Click the subcategory Electronics
#    Then Pick the item
#    Then Change qty
#    Then Click the button Add Item to the Cart
#    Then Verify that 2 items was added to the cart
#
#
#
#
# #5
#  Scenario: Add item to the category Age and Category Brand
#
#    Then Click the category Age
#    Then Click the subcategory Big Kids
#    Then Pick the item
#    Then Click the button Add Item to the Cart
#    Then Go back to the home page
#    Then Click the category Brand
#    Then Click the subcategory Avigo
#    Then Pick the item
#    Then Click the button Add Item to the Cart
#    Then Verify that 2 items was added to the cart
#
#
#
#
#
#
#
#
#

#Feature: acceptance test

  #Scenario: LogIn
    #Then I LogIn in Facebook