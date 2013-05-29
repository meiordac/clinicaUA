# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :inventory do
    reutilizable false
    cost ""
    quantity 1
    name "MyString"
  end
end
