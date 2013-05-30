# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :inventory do
    reutilizable false
    finalcost ""
    quantity 1
    name "MyString"
    image "MyString"
    codeproduct "MyString"
    netvalue 1.5
    descto 1.5
  end
end
