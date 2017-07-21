class Seed

  def self.begin
    seed = Seed.new
    seed.generate_parks
  end

  def generate_parks
    40.times do |i|
      park = Park.create!(
        name: Faker::Book.unique.title,
        sq_miles: Faker::Number.between(10,10000),
        state: Faker::Address.state,
        year: Faker::Number.between(1872, 2000),
        fauna: Faker::ElderScrolls.creature
      )
    end
    puts "Generated #{Park.count} parks"
  end
end

Seed.begin
