require 'csv'

ActiveRecord::Base.connection.execute("TRUNCATE TABLE original_songs;")
insert_data = []
original_songs = CSV.read('db/fixtures/original_songs.tsv', col_sep: "\t")
header = original_songs.shift
now = Time.now
original_songs.each do |original_song|
  os = header.zip(original_song).to_h
  insert_data << { 
    code: os['code'],
    original_code: os['original_code'],
    title: os['title'],
    composer: os['composer'].to_s,
    track_number: os['track_number'],
    is_duplicate: os['is_duplicate'].to_s == '1',
    created_at: now,
    updated_at: now
  }
end
OriginalSong.insert_all(insert_data)
