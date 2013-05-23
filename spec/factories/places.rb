# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :place do
    typecleaning "MyString"
    area "MyString"
    status "MyString"
    unit "MyString"
    building "MyString"
    floor "MyString"
  end
end
