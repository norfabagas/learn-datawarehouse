require 'faker'

# Address seeder
province = Province.create(name: 'Jawa Barat')
city = City.create(province: province, name: 'Bandung')
district = District.create(city: city, name: 'Bandung')
sub_district = SubDistrict.create(district: district, name: 'Antapani')
village = Village.create(sub_district: sub_district, name: 'Antapani Wetan')
postal_code = PostalCode.create(village: village, post_code: '40291')

# Credit card list
cc_bca = CreditCardList.create(name: 'BCA', detail: 'Bank Central Asia', is_active: true)
cc_bni = CreditCardList.create(name: 'BNI', detail: 'Bank Negara Indonesia', is_active: true)

# Debit card list
dc_bca = DebitCardList.create(name: 'BCA', detail: 'Bank Central Asia', is_active: true)
dc_bni = DebitCardList.create(name: 'BNI', detail: 'Bank Negara Indonesia', is_active: true)

# Digital wallet list
gopay = DigitalWalletList.create(name: 'Gopay', detail: 'Payment with Gopay', is_active: true)
ovo = DigitalWalletList.create(name: 'OVO', detail: 'Payment with OVO', is_active: true)

# Create customer
customer_1 = Customer.create(
  customer_code: Faker::Code.npi,
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: BCrypt::Password.create('password'),
  age: Faker::Number.between(from: 1, to: 100),
  gender: "male",
  verified_at: Time.now
)

customer_2 = Customer.create(
  customer_code: Faker::Code.npi,
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: BCrypt::Password.create('password'),
  age: Faker::Number.between(from: 1, to: 100),
  gender: "female",
  verified_at: Time.now
)

# Create address
address1_customer1 = Address.create(
  customer: customer_1, 
  village: village, 
  postal_code: postal_code, 
  full_address: Faker::Address.street_address,
  address_hint: Faker::Address.community,
  is_active: true,
  is_default: true
)

address2_customer1 = Address.create(
  customer: customer_1, 
  village: village, 
  postal_code: postal_code, 
  full_address: Faker::Address.street_address,
  address_hint: Faker::Address.community,
  is_active: true,
  is_default: false
)

address1_customer2 = Address.create(
  customer: customer_2, 
  village: village, 
  postal_code: postal_code, 
  full_address: Faker::Address.street_address,
  address_hint: Faker::Address.community,
  is_active: true,
  is_default: true
)


# Create payment
cc1_customer1 = CreditCard.create(
  customer: customer_1,
  credit_card_list: cc_bca,
  holder_name: customer_1.name,
  card_number: Faker::Number.leading_zero_number(digits: 10),
  cvc: Faker::Number.leading_zero_number(digits: 3),
  valid_until: Time.now + 2*365*24*60*60,
  is_active: true,
  is_default: true
)

dc1_customer2 = DebitCard.create(
  customer: customer_2,
  debit_card_list: dc_bni,
  holder_name: customer_2.name,
  card_number: Faker::Number.leading_zero_number(digits: 10),
  valid_until: Time.now + 2*365*24*60*60,
  is_active: true,
  is_default: true
)

