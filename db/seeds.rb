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
  is_active: true,
  is_default: true
)

# Create cashier user
cashier_user = CashierUser.create(
  identity_number: Faker::Number.leading_zero_number(digits: 10),
  name: Faker::Name.name,
  username: Faker::Alphanumeric.alpha(number: 10),
  password: BCrypt::Password.create('password')
)

# Create store
store = Store.create(
  name: Faker::Name.name,
  description: 'Lorem Ipsum',
  is_active: true
)

# Create items
item_categ_1 = ItemCategory.create(category_name: 'Beverage')
item_categ_2 = ItemCategory.create(category_name: 'Food')

item_1 = Item.create(
  item_category: item_categ_1,
  name: 'Coffee XYZ',
  sap_code: Faker::Code.imei,
  is_active: true
)

item_2 = Item.create(
  item_category: item_categ_1,
  name: 'Tea XYZ',
  sap_code: Faker::Code.imei,
  is_active: true
)

item_3 = Item.create(
  item_category: item_categ_2,
  name: 'Potato Chips XYZ',
  sap_code: Faker::Code.imei,
  is_active: true
)

item_4 = Item.create(
  item_category: item_categ_2,
  name: 'Choco Bread XYZ',
  sap_code: Faker::Code.imei,
  is_active: true
)

# Create cashier session
start_date = Time.now 
end_date = Time.now + 8*60*60
trx_date = Time.now + 1*60*60

session = CashierSession.create(
  cashier_user: cashier_user,
  store: store,
  started_at: start_date,
  ended_at: end_date
)

# Create receive orders
receive_order = ReceiveOrder.create(
  store: store,
  receive_date: Time.now - 1*24*3600
)

ro1 = ReceiveOrderDetail.create(
  receive_order: receive_order,
  item: item_1,
  cogs: 5000,
  price: 7000,
  quantity: 5
)

ro2 = ReceiveOrderDetail.create(
  receive_order: receive_order,
  item: item_2,
  cogs: 7500,
  price: 8000,
  quantity: 10
)

ro3 = ReceiveOrderDetail.create(
  receive_order: receive_order,
  item: item_3,
  cogs: 10500,
  price: 12000,
  quantity: 20
)

ro2 = ReceiveOrderDetail.create(
  receive_order: receive_order,
  item: item_4,
  cogs: 15000,
  price: 16000,
  quantity: 10
)

# Create transaction types
type_1 = TransactionType.create(
  transaction_name: 'Cash'
)

type_2 = TransactionType.create(
  transaction_name: 'Credit'
)

# Create transaction status
status_1 = TransactionStatus.create(
  status_name: 'In Cart'
)

status_2 = TransactionStatus.create(
  status_name: 'In Payment'
)

status_3 = TransactionStatus.create(
  status_name: 'Done'
)

status_4 = TransactionStatus.create(
  status_name: 'Not Completed'
)

