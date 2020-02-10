require 'faker'

10.times do

  new_restaurant = Restaurant.new


  new_restaurant.name = Faker::Restaurant.name
  new_restaurant.address = Faker::Address.street_address

  new_restaurant.save
end

#HTTP REQUESTS

  # Parts of a http request:


  # 1 - VERB


  # GET - Is for fetching information

  # POST - Is for sending information
  #   - Has a body! "{name: 'Sikha', address: 'Canggu'}"

  # DELETE - Is for deleting information

  # PATCH - Is for updating information


