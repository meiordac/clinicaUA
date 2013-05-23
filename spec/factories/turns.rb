# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :turn do
    validshift false
    shifhtstartime "2013-05-22"
    shiftendtime "2013-05-22"
  end
end
