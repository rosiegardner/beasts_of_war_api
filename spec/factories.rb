FactoryBot.define do
  factory(:beast) do
    daemon {"Hellhound"}
    breed {Faker::Games::WarhammerFantasy.creature}
    name {Faker::Creature::Dog.name}
    age {Faker::Number.between(from: 1, to: 1000)}
    desc {Faker::Games::WarhammerFantasy.quote}
  end

  factory(:beast) do
    daemon {"Shadow Cat"}
    breed {Faker::Games::ElderScrolls.creature}
    name {Faker::Creature::Cat.name}
    age {Faker::Number.between(from: 1, to: 1000)}
    desc {Faker::Games::WorldOfWarcraft.quote}
  end
end