class Script
  KINDS = %w[book magazine].freeze

  def all
    Book.all + Magazine.all
  end

  def by_isbn(isbn)
    (Book.where(isbn: isbn) + Magazine.where(isbn: isbn)).last
  end

  def by_authors_email(email)
    Book.where(authors_emails: email) + Magazine.where(authors_emails: email)
  end
end
