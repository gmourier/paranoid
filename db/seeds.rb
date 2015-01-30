require 'faker'

10.times do |i|
    Post.create(
        title: Faker::Lorem.sentence, 
        content: Faker::Lorem.paragraph(5),
        publish: true
    )
end

5.times do |i|
    Concert.create(
        name: Faker::Lorem.word,
        description: Faker::Lorem.paragraph(2),
        show_at: Faker::Time.between(25.days.ago, 25.days.from_now, :all),
        country: Faker::Address.country,
        street: Faker::Address.street_address,
        postal_code: Faker::Address.postcode,
        city: Faker::Address.city,
        lat: Faker::Address.latitude,
        long: Faker::Address.longitude,
        publish: true
    )
end

2.times do |i|
    Page.create(title: Faker::Lorem.word, content: Faker::Lorem.paragraph(5), publish: true)
end