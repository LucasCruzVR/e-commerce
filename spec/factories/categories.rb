FactoryBot.define do
  factory :categories, class: 'ECommerce::Models::Category' do
    name { Faker::Name.unique.name }
  end
end
