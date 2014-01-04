dat_files = Dir.glob(Rails.root + "db/data/fortune-mod-9708/datfiles/*")
dat_data = dat_files.map do |df|
  if File.file?(df)
    File.read(df).split(/^%$/).map{|data| {:category => File.basename(df), :message => data.strip}}.reject{|data| 0 == data[:message].length}
  end
end.flatten.reject{|df| df.nil?}

Fortune.collection.insert(dat_data)


