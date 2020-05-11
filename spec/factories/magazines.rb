FactoryBot.define do
  factory :magazine do
    title { "Vouge" }
    isbn  { "2222-1111-1111" }
    authors_emails { "vouge@gmail.com" }
    published_at { "11.04.2012".to_date }
  end
end
