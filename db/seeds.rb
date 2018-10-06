require_relative '../models/address_book.rb'
require_relative '../models/entry.rb'
require 'bloc_record'

BlocRecord.connect_to('db/address_bloc.sqlite')

book = AddressBook.create(name: 'My Address Book')
other_book = AddressBook.create(name: 'Favorites')

puts 'Address Book created'
puts 'Entry Created'
puts Entry.create(address_book_id: book.id, name: 'Foo One', phone_number: '999-999-9999', email: 'foo_one@gmail.com')
puts Entry.create(address_book_id: book.id, name: 'Foo Two', phone_number: '111-111-1111', email: 'foo_two@gmail.com')
puts Entry.create(address_book_id: book.id, name: 'Foo Three', phone_number: '222-222-2222', email: 'foo_three@gmail.com')

puts 'Favorites created'
puts Entry.create(address_book_id: other_book.id, name: 'Alonso', phone_number: '123-123-1234', email: 'alonso@mail.com')
puts Entry.create(address_book_id: other_book.id, name: 'Greek', phone_number: '234-345-4567', email: 'greek@mail.com')
puts Entry.create(address_book_id: other_book.id, name: 'DK', phone_number: '123-234-6790', email: 'dk@mail.com')
