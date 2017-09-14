require 'rails_helper'
# As a user
# When I visit a specific snack page
# I see the name of that snack
# I see the price for that snack
# I see a list of locations with vending machines that carry that snack
# I see the average price for snacks in those vending machines
# And I see a count of the different kinds of items in that vending machine.
RSpec.feature "When a user visits a snack show page" do
  scenario 'they see the attributes of the snack' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    westend  = owner.machines.create(location: "Westend")
    snack = dons.snacks.create(name: "Snickers", price: 2.59)
    snack = westend.snacks.create(name: "Snickers", price: 2.59)


    visit snack_path(snack)

    expect(page).to have_content(snack.name)
    expect(page).to have_content(snack.price)
    expect(page).to have_content(snack.average_price)
    expect(page).to have_content("Don's Mixed Drinks")
    expect(page).to have_content("Westend")
  end
end
