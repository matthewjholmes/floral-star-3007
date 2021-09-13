# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
park_1 = AmusementPark.create(name: "Six Flags", price_of_admission: 30)
ride_1 = Ride.create(name: "Terror Mobile", thrill_rating: 1, open: true, amusement_park_id: park_1.id)
ride_2 = Ride.create(name: "IV Adrenaline", thrill_rating: 2, open: true, amusement_park_id: park_1.id)
julio = Mechanic.create(name: 'Julio Venegas', years_experience: 2)
catherine = Mechanic.create(name: 'Catherine Duke', years_experience: 5)
lisa = Mechanic.create(name: 'Lisa Miller', years_experience: 22)
mech_ride_1 = MechanicRide.create(mechanic_id: julio.id, ride_id: ride_1.id)
mech_ride_2 = MechanicRide.create(mechanic_id: catherine.id, ride_id: ride_1.id)
mech_ride_3 = MechanicRide.create(mechanic_id: lisa.id, ride_id: ride_1.id)
