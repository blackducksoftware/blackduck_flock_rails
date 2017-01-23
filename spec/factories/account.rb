FactoryGirl.define do
  factory :account, class: User do
    email 'email@blackducksoftware.com'
    password 'foobarbaz'
    password_confirmation 'foobarbaz'
  end
end
