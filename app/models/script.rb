require 'byebug'

class Script
  KINDS = %w[book magazine].freeze

  def all
    KINDS.each_with_object([]) do |kind, result|
      result << kind.classify.constantize.all
    end.flatten
  end

  def by_isbn(isbn)
    (Book.where(isbn: isbn) + Magazine.where(isbn: isbn)).last
  end

  def by_authors_email(email)
    Book.where(authors_emails: email) + Magazine.where(authors_emails: email)
  end

  def all_sorted_by_title
    (Book.all).merge(Magazine.all).order(:title)
  end
end
