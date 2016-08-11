# Create method to split up words and create multiple tags from the Tag Input field





def split_into_tags(tags)
  separate_tags = Array.new
  tags.split(" ").each do |tag|
    separate_tags << {name:"#" + tag}
  end
  separate_tags
end
