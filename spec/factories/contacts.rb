FactoryBot.define do
    factory:contact do
        email { Faker::Internet.email }
        content { Faker::Lorem.characters(number: 300) }
    end
end