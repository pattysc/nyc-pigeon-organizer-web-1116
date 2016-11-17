def nyc_pigeon_organizer(pigeon_data)
  newhash = {}

  pigeon_data.values.each do |datahashes|
    datahashes.values.each do |names|
      names.each do |name|
        newhash[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end

  pigeon_data.each do |category, infohash|
    infohash.each do |key, names|
      names.each do |name|
        newhash[name][category] << key.to_s
      end
    end
  end
  return newhash
end
