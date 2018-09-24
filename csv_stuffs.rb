require 'csv'

fichier = "./monfichier.csv"
fichier_out = "./monfichier_out.csv"

CSV.foreach(fichier) do |row|
  # use row here...
  print row
  puts ""
  #puts "titre #{row['titre']}"
end

arr_of_arrs = CSV.read(fichier)
puts arr_of_arrs.inspect

CSV.open(fichier_out, "wb", { :col_sep => ";"}) do |csv|
  1.upto(50) do
    csv << [rand(5000), rand(5000), rand(5000), rand(5000), rand(5000), rand(5000)]
  end
end

csv_string = CSV.generate do |csv|
  csv << ["row", "of", "CSV", "data"]
  csv << ["another", "row"]
  # ...
end

puts "csv_string #{csv_string.inspect}"

csv_string = ["CSV", "data"].to_csv   # to CSV
puts csv_string
csv_array  = "CSV,String\nAnother,line".parse_csv   # from CSV
puts csv_array.inspect

CSV             { |csv_out| csv_out << %w{my data here} }
CSV(csv = "")   { |csv_str| csv_str << %w{my data here} }
puts "csv : #{csv.inspect}"
CSV($stderr)    { |csv_err| csv_err << %w{my data here} }
# CSV($stdin)     { |csv_in|  csv_in.each { |row| p row } }
