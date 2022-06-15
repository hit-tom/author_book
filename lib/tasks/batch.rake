require 'csv'

namespace :batch do
  desc "Import Authors"
  task import_csv: :environment do
    
    CSV.foreach('authors.csv', headers: true) do |row|
      Author.first_or_create(row.to_h)
    end    
  end

end
