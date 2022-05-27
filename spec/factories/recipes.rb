FactoryBot.define do
    factory:recipe do
        title { Faker::Lorem.characters(number: 10) }
    end
end