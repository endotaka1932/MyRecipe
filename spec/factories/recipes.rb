FactoryBot.define do
    factory :recipe do
        title { Faker::Lorem.characters(number: 10) }
        association :user, factory: :user

        trait :recipe_with_category do
            after :create do
                create(:recipe_category, recipe: create(:recipe), category: create(:category))
            end
        end
    end
end