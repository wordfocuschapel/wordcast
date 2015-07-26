atom_feed do |feed|
  feed.title "Word Focus Chapel Word Casts"
  feed.updated @media.maximum(:updated_at)
  
  @media.each do |medium|
    feed.entry medium, published: medium.created_at do |entry|
      entry.title medium.title
      entry.content medium.link
      entry.author do |author|
        author.name "Word Focus Chapel Word Casts"
      end
    end
  end
end