require 'byebug'

class Script
  KINDS = %w[book magazine].freeze

  def all
    KINDS.each_with_object([]) do |kind, result|
      result << kind.classify.constantize.all
    end.flatten
  end

  def by_isbn(isbn)
    find_by("isbn", isbn).last
  end

  def by_authors_email(email)
    includes_value("authors_emails", email)
  end

  def all_sorted_by_title
    (Book.all).merge(Magazine.all).order(:title)
  end

  private

  def find_by(field, value)
    KINDS.each_with_object([]) do |kind, result|
      result << kind.classify.constantize.where("#{field}": value)
    end.flatten
  end

  def includes_value(field, value)
    KINDS.each_with_object([]) do |kind, result|
      result << kind.classify.constantize.where("#{field} like ?", "%#{value}%")
    end.flatten
  end
end
