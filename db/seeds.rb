require 'faker'

# Address seeder
Province.create([
  {id: 1, name: 'DKI Jakarta'},
  {id: 2, name: 'Jawa Barat'}
])

City.create([
  {id: 1,province_id: 1, name: 'Jakarta Selatan'},
  {id: 2,province_id: 1, name: 'Jakarta Barat'},
  {id: 6,province_id: 2, name: 'Bekasi'},
  {id: 7,province_id: 2, name: 'Bogor'},
  {id: 8,province_id: 2, name: 'Depok'}
])

District.create([
  {id: 1, city_id: 1, name: 'Kota Jakarta Selatan'},
  {id: 2, city_id: 1, name: 'Kota Jakarta Barat'},
  {id: 3, city_id: 2, name: 'Kota Bekasi'},
  {id: 4, city_id: 2, name: 'Kota Bogor'},
  {id: 5, city_id: 2, name: 'Kota Depok'}
])

SubDistrict.create([
  {id: 1, district_id: 1, name: 'Cilandak'},
  {id: 2, district_id: 1, name: 'Kebayoran Baru'},
  {id: 3, district_id: 2, name: 'Palmerah'},
  {id: 4, district_id: 2, name: 'Kebon Jeruk'},
  {id: 5, district_id: 3, name: 'Bekasi Timur'},
  {id: 6, district_id: 3, name: 'Bekasi Utara'},
  {id: 7, district_id: 4, name: 'Bogor Utara'},
  {id: 8, district_id: 4, name: 'Bogor Selatan'},
  {id: 9, district_id: 5, name: 'Cipayung'},
  {id: 10, district_id: 5, name: 'Cimanggis'}
])

Village.create([
  {id: 1, sub_district_id: 1, name: 'Cipete Selatan'},
  {id: 2, sub_district_id: 1, name: 'Gandaria Selatan'},
  {id: 3, sub_district_id: 2, name: 'Senayan'},
  {id: 4, sub_district_id: 2, name: 'Gunung'},
  {id: 5, sub_district_id: 3, name: 'Slipi'},
  {id: 6, sub_district_id: 3, name: 'Kemanggisan'},
  {id: 7, sub_district_id: 4, name: 'Kelapa Dua'},
  {id: 8, sub_district_id: 4, name: 'Sukabumi Selatan'},
  {id: 9, sub_district_id: 5, name: 'Margahayu'},
  {id: 10, sub_district_id: 5, name:  'Bekasi Jaya'},
  {id: 11, sub_district_id: 6, name:  'Harapan Baru'},
  {id: 12, sub_district_id: 6, name:  'Harapan Jaya'},
  {id: 13, sub_district_id: 7, name:  'Bantar Jati'},
  {id: 14, sub_district_id: 7, name:  'Cibuluh'},
  {id: 15, sub_district_id: 8, name:  'Batutulis'},
  {id: 16, sub_district_id: 8, name:  'Bojongkerta'},
  {id: 17, sub_district_id: 9, name:  'Cipayung Jaya'},
  {id: 18, sub_district_id: 9, name:  'Pondok Jaya'},
  {id: 19, sub_district_id: 10, name: 'Cisalak Pasar'},
  {id: 20, sub_district_id: 10, name: 'Curug'}
])

PostalCode.create([
  {id: 1, village_id: 1, post_code: '12410'},
  {id: 2, village_id: 2, post_code: '12420'},
  {id: 3, village_id: 3, post_code: '12190'},
  {id: 4, village_id: 4, post_code: '12120'},
  {id: 5, village_id: 5, post_code: '11410'},
  {id: 6, village_id: 6, post_code: '11480'},
  {id: 7, village_id: 7, post_code: '11550'},
  {id: 8, village_id: 8, post_code: '11560'},
  {id: 9, village_id: 9, post_code: '17113'},
  {id: 10, village_id: 10, post_code: '17112'},
  {id: 11, village_id: 11, post_code: '17123'},
  {id: 12, village_id: 12, post_code: '17124'},
  {id: 13, village_id: 13, post_code: '16153'},
  {id: 14, village_id: 14, post_code: '16151'},
  {id: 15, village_id: 15, post_code: '16133'},
  {id: 16, village_id: 16, post_code: '16139'},
  {id: 17, village_id: 17, post_code: '16437'},
  {id: 18, village_id: 18, post_code: '16438'},
  {id: 19, village_id: 19, post_code: '16452'},
  {id: 20, village_id: 20, post_code: '16453'}
])

# Credit card list
CreditCardList.create([
  {id: 1, name: 'BCA', detail: 'Bank Central Asia', is_active: true},
  {id: 2, name: 'BNI', detail: 'Bank Negara Indonesia', is_active: true}
])

# Debit card list
DebitCardList.create([
  {id: 1, name: 'BCA', detail: 'Bank Central Asia', is_active: true},
  {id: 2, name: 'BNI', detail: 'Bank Negara Indonesia', is_active: true}
])

# Digital wallet list
DigitalWalletList.create([
  {id: 1, name: 'Gopay', detail: 'Payment with Gopay', is_active: true},
  {id: 2, name: 'OVO', detail: 'Payment with OVO', is_active: true}
])

# Create customer
100.times do |index|
  Customer.create([
    {
      id: index+1,
      customer_code: Faker::Code.npi,
      name: Faker::Name.name,
      email: Faker::Internet.email, 
      password: BCrypt::Password.create('password'),
      age: Faker::Number.between(from: 1, to: 60),
      gender: index % 2 == 0 ? "male" : "female",
      verified_at: Time.now  
    }
  ])
end

# Create address
100.times do |index|
  Address.create([
    {
      id: index+1,
      customer_id: index+1,
      village_id: Faker::Number.between(from: 1, to: 20),
      postal_code_id: Faker::Number.between(from: 1, to: 20),
      full_address: Faker::Address.street_address,
      address_hint: Faker::Address.community,
      is_active: true,
      is_default: true
    }
  ])
end

# Create payment
100.times do |index|
  iter = index+1
  CreditCard.create([
    {
      id: iter,
      customer_id: iter,
      credit_card_list_id: iter % 2 == 0 ? 1 : 2,
      holder_name: Customer.find(iter).name,
      card_number: Faker::Number.leading_zero_number(digits: 16),
      cvc: Faker::Number.leading_zero_number(digits: 3),
      valid_until: Time.now + 5*365*24*60*60,
      is_active: true,
      is_default: true
    }
  ])

  DebitCard.create([
    {
      id: iter,
      customer_id: iter,
      debit_card_list_id: index % 2 == 0 ? 1 : 2,
      holder_name: Customer.find(iter).name,
      card_number: Faker::Number.leading_zero_number(digits: 16),
      is_active: true,
      is_default: true
    }
  ])
  
  DigitalWallet.create([
    {
      id: iter,
      customer_id: iter,
      digital_wallet_list_id: index % 2 == 0 ? 1 : 2,
      name: Customer.find(iter).name,
      detail: "08" + Faker::Number.leading_zero_number(digits: 10),
      is_active: true,
      is_default: true
    }
  ])
end

# Create cashier user
2.times do |index| 
  CashierUser.create([
    {
      id: index + 1,
      identity_number: Faker::Number.leading_zero_number(digits: 16),
      name: Faker::Name.name,
      username: Faker::Alphanumeric.alpha(number: 8),
      password: BCrypt::Password.create('password')
    }
  ])

  Store.create([
    {
      id: index + 1,
      name: "Store: " + Faker::Name.name,
      description: Faker::Address.community,
      is_active: true
    }
  ])
end

ItemCategory.create([
  {category_name: "Coffee"},
  {category_name: "Bread"},
  {category_name: "Dairy"},
  {category_name: "Fruit"},
  {category_name: "Ice Cream"}
])

100.times do |index|
  Item.create([
    id: index+1,
    item_category_id: Faker::Number.between(from: 1, to: 5),
    name: Faker::Company.name,
    sap_code: Faker::Code.imei,
    is_active: true
  ])
end

# Create cashier session
5.times do |index|
  CashierSession.create([
    {
      cashier_user_id: 1,
      store_id: 1,
      start_at: DateTime.new(2020, 7, 6 + index, 1, 0, 0),
      end_at: DateTime.new(2020, 7, 6 + index, 23, 0, 0)
    },
    {
      cashier_user_id: 2,
      store_id: 2,
      start_at: DateTime.new(2020, 7, 6 + index, 1, 0, 0),
      end_at: DateTime.new(2020, 7, 6 + index, 23, 0, 0)
    }
  ])
end

# Receive Orders
5.times do |index|
  ReceiveOrder.create([
    {
      store_id: 1,
      receive_date: DateTime.new(2020, 7, 5 + index, 21, 0, 0)
    },
    {
      store_id: 2,
      receive_date: DateTime.new(2020, 7, 5 + index, 21, 0, 0)
    }
  ])
end

# Receive Order Details
10.times do |index|
  ReceiveOrderDetail.create([
    {
      receive_order_id: index + 1,
      item_id: Faker::Number.between(from: 1, to: 100),
      cogs: Faker::Number.between(from: 1000, to: 10000),
      price: Faker::Number.between(from: 1000, to: 10000),
      quantity: Faker::Number.between(from: 1, to: 10)
    },
    {
      receive_order_id: index + 1,
      item_id: Faker::Number.between(from: 1, to: 100),
      cogs: Faker::Number.between(from: 1000, to: 10000),
      price: Faker::Number.between(from: 1000, to: 10000),
      quantity: Faker::Number.between(from: 1, to: 10)
    },
    {
      receive_order_id: index + 1,
      item_id: Faker::Number.between(from: 1, to: 100),
      cogs: Faker::Number.between(from: 1000, to: 10000),
      price: Faker::Number.between(from: 1000, to: 10000),
      quantity: Faker::Number.between(from: 1, to: 10)
    },
  ])
end

# Create transaction types
TransactionType.create([
  {transaction_name: 'Cash'},
  {transaction_name: 'Credit'}
])

TransactionStatus.create([
  {status_name: 'Cart'},
  {status_name: 'Payment'},
  {status_name: 'Done'},
  {status_name: 'Cancelled'},
])

