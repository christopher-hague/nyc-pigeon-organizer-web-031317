def nyc_pigeon_organizer(data)
  # create empty hash
  new_hash = {}

  data.each do |qualities, stats|
  # iterate over each of the pigeon qualities
    
    stats.each do |quality, names|
    # iterate over each of the stats for each quality

      names.each do |name|
      # for each name in each arr

        new_hash[name] ||= {}
        # create a key/value pair within new_hash with a key equal to
        # a pigeons name and a vaue equal to an empty hash IF the name
        # key has a value of nil (the ||= ensures that the new_hash[name]
        # val will equal a new hash only if the new_hash[name] val is
        # equal to nil)

        new_hash[name][qualities] ||= []
        # create a key/value pair within the :name key of new_hash for
        # each quality within the first lvl of the data hash. Each key
        # will be one of the qualities with a value of an empty arr
        # (just as the new_hash[name] used the ||= operator, a new value
        # of an empty arr will be set only if the current val is nil)

        # the arr stored at new_hash[name][qualities] will have pushed
        # to it a str equal to the value of quality (from the 2nd lvl of
        # the data hash)
        new_hash[name][qualities] << quality.to_s
      end
    end
  end

  new_hash
end
