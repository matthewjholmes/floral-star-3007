require 'rails_helper'

RSpec.describe 'the mechanic index' do

  it 'lists all the mechanics and years of experience' do
    park_1 = AmusementPark.create(name: "Six Flags", price_of_admission: 30)
    ride_1 = Ride.create(name: "Terror Mobile", thrill_rating: 1, open: true, amusement_park_id: park_1.id)
    ride_2 = Ride.create(name: "IV Adrenaline", thrill_rating: 2, open: true, amusement_park_id: park_1.id)
    julio = Mechanic.create(name: 'Julio Venegas', years_experience: 2, ride_id: ride_1.id)
    catherine = Mechanic.create(name: 'Catherine Duke', years_experience: 5, ride_id: ride_1.id)
    lisa = Mechanic.create(name: 'Lisa Miller', years_experience: 22, ride_id: ride_2.id)

    visit "/mechanics"

    save_and_open_page

    expect(page).to have_content("All Mechanics")
    expect(page).to have_content(julio.name)
    expect(page).to have_content(julio.years_experience)
    expect(page).to have_content(catherine.name)
    expect(page).to have_content(catherine.years_experience)
    expect(page).to have_content(lisa.name)
    expect(page).to have_content(lisa.years_experience)
  end
end
