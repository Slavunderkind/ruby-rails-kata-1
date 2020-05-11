# frozen_string_literal: true

require 'csv'

# Read and save data from CSV file into DB
class CsvReader
  DATA_PATH = File.join(Rails.root,'data')
  SEPARATOR = "\;"

  def execute(data_name)
    filename = "#{DATA_PATH}/#{data_name}.csv"

    CSV.read(filename, col_sep: SEPARATOR).each_with_index do |row, index|
      next if index.zero?

      self.send(data_name, row)
    end
  end

  private

  def authors(row)
    Author.create!(
      email: row[0],
      first_name: row[1],
      last_name: row[2]
    )
  end

  def books(row)
  end
end
