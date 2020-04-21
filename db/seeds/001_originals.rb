require 'csv'

ActiveRecord::Base.connection.execute("TRUNCATE TABLE originals;")
insert_data = []
originals = CSV.read('db/fixtures/originals.tsv', col_sep: "\t")
header = originals.shift
now = Time.now
originals.each do |original|
  o = header.zip(original).to_h
  insert_data << {
    code: o['code'],
    title: o['title'],
    short_title: o['short_title'],
    original_type: o['original_type'],
    created_at: now,
    updated_at: now
  }
end
Original.insert_all(insert_data)
