require 'faker'

# Creating new user with pre-filled data, data can be updated if needed

class User
  attr_accessor :email, :first_name, :last_name, :password, :date, :month, :year,
                :country, :address, :city, :postcode

  def initialize(options={})
    @email = (options[:email] || UUID.generate(:compact).to_s[0..10] + '+test@morpheusgames.comg')
    @password = (options[:password] || 'Qwerty123')
    @first_name = (options[:first_name] || Faker::Name.first_name)
    @last_name = (options[:last_name] || Faker::Name.last_name)
    @date = (options[:date] || rand(1..28))
    @month = (options[:month] || ['June', 'May', 'November', 'January'].sample)
    @year = (options[:year] || rand(1950..1999))
    @country = (options[:country] || Faker::Address.country)
    @address = (options[:address] || Faker::Address.street_address)
    @city = (options[:city] || Faker::Address.city)
    @postcode = (options[:postcode] || Faker::Address.postcode)
  end

end