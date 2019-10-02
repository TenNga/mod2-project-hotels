require 'csv'
table = CSV.parse(File.read("app/models/parser/hotel_data.csv"), headers: true, :encoding => 'ISO-8859-1')
table.each do |row|
    rowH = row.to_hash
    if rowH["image"] && rowH["name"] && rowH["city"] && rowH["country"]
        puts rowH["country"]
    end
end