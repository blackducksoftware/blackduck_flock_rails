FactoryGirl.define do
  factory :account, class: User do
    sequence :email do |n|
      "email#{n}@blackducksoftware.com"
    end
    password 'foobarbaz'
    password_confirmation 'foobarbaz'
  end
end
