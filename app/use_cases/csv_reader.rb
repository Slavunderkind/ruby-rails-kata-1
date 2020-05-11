# frozen_string_literal: true

require 'csv'

# Read and save data from CSV file into DB
class CsvReader
  APP_PATH = File.dirname(File.dirname(File.expand_path(__FILE__))).freeze
  SEPARATOR = "\;"

  def read_authors
    filename = "#{APP_PATH}/data/authors.csv"

    CSV.read(filename, col_sep: SEPARATOR).each_with_index do |row, index|
      next if index.zero?

      Author.create!(
        email: row[0],
        first_name: row[1],
        last_name: row[2]
      )
    end
  end
end
