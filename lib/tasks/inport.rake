require 'csv'

# rake import:workbooks
namespace :import do
  desc "Import workbooks from csv"

  task workbooks: :environment do
    path = File.join Rails.root, "db/csv/csv_data.csv"
    puts "path: #{path}"
    list = []
    CSV.foreach(path, headers: true) do |row|
      list << {
          product: row["product"],
          author: row["author"],
          image: row["image"],
          link: row["link"],
          all: row["all"],
          listening: row["listening"],
          reading: row["reading"],
          word: row["word"],
          grammer: row["grammer"]
      }
    end
    puts "start to create workbooks data"
    begin
      Workbook.create!(list)
      puts "completed!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "raised error : unKnown attribute "
    end
  end
end
