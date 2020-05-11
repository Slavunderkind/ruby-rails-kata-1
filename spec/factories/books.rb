FactoryBot.define do
  factory :book do
    title { "Harry Potter" }
    isbn  { "1111-1111-1111" }
    authors_emails { "j.k.rowling@gmail.com" }
    description { "Harry Potter is a series of fantasy novels written by British author J. K. Rowling. The novels chronicle the lives of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley, all of whom are students at Hogwarts School of Witchcraft and Wizardry." }
  end
end
