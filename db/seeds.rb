100.times do 

  Team.create!(
              name: Faker::Team:: name,
              creature: Faker::Team::creature,
              state: Faker::Team::state
              )
end
  