class Script
  KINDS = %w[book magazine].freeze

  def all
    Book.all + Magazine.all
  end
end
