def nyc_pigeon_organizer(data)
new = {}
  data.each do |key, values|
    values.each do |attrib, names|
      names.each do |name|
        if !new.has_key?(name)
          new[name] = {}
        end
        if !new[name].has_key?(key)
          new[name][key]=[]
        end
        if !new[name][key].include?(attrib)
          new[name][key] << attrib.to_s
        end
      end
    end
  end
new
end