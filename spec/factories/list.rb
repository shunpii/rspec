#Fakerを使用する際の生成文字数はtitleが10文字、bodyは30文字とします。

FactoryBot.define do
  factory :list do
    title {Faker::Lorem.characters(number:10)}
    body {Faker::Lorem.characters(number:30)}
  end
end