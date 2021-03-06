require 'rails_helper'

feature 'When a user visits a vending machine show page' do
  scenario 'they see the location of that machine' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")

    visit machine_path(dons)

    expect(page).to have_content("Don's Mixed Drinks Vending Machine")
  end

  scenario 'they see all of the snacks and prices associated with that machine' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    snack = dons.snacks.create(name: "Snickers", price: 2.59)

    visit machine_path(dons)

    expect(page).to have_content("Snickers")
    expect(page).to have_content(2.59)
  end

  scenario 'they see an average price for all snacks of that machine' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    snack = dons.snacks.create(name: "Snickers", price: 2.50)
    snack2 = dons.snacks.create(name: "Cheetos", price: 3.50)
    snack3 = dons.snacks.create(name: "Pop Rocks", price: 1.50)

    visit machine_path(dons)

    expect(page).to have_content(machine.snacks.average_price)
  end
end


# ```
# As a user
# When I visit a specific vending machine page
# I see the name of all of the snacks associated with that vending machine along with their price
