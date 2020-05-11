require 'csv'

class CsvReader

  APP_PATH = File.dirname(File.dirname(File.expand_path(__FILE__))).freeze

  def read_authors
    filename = "#{APP_PATH}/data/authors.csv"

    CSV.read(filename).each do |row|
      next if index.zero?

      #Save record into DB
    end
  end
end
