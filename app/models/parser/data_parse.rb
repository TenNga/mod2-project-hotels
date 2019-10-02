require 'csv'
table = CSV.parse(File.read("app/models/parser/hotel_data.csv"), headers: true, :encoding => 'ISO-8859-1')
table.each do |row|
    rowH = row.to_hash
    if rowH != nil
        puts rowH["image"].class
    end
end