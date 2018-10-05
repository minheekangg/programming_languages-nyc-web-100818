def reformat_languages(languages)

new_hash_type = {}

new_hash_style = {}
new_hash = {}


grouped = languages.group_by {|k,v| v}

  grouped.each do |gstyle, gdata|
    group_blank = []
    gdata.each do |gkey, grest|
      group_blank << gkey
      puts group_blank
      grest.each do |glang, gnotneed|
    end
    end
  end

  languages.each do |function, lang_type|
    lang_type.each do |lang, type|
            curr_function = []
            curr_function << function
      type.each do |key, value|
        new_hash_type[lang] = type
      new_hash_style[lang] = {:style =>curr_function}
    end
    end
  end
  new_hash_style.each do |style_lang, style_style|
    style_style.each do |style_key, style_value|
    new_hash_type.each do |type_lang, type_type|
      type_type.each do |type_key, type_value|
      if style_lang == type_lang
        new_hash[style_lang] = {:type => type_value, :style => style_value}
      end
    end
end
end
end
return new_hash
end
