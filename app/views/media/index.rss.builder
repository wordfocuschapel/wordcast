title = "Word Focus Chapel WordCasts"
author = "Word Focus Chapel"
description = "Word Focus Resources from Word Focus Chapel. From sermon audio and video, to Sermon notes."
keywords = "sermons, christian, church, podcasts, jesus, god, christianity, hope, encourage, prayer, religion, bible, faith"

if params[:ipod]
  title += " (Mobile)"
  description += " This version is for mobile devices which cannot support the full resolution version."
  keywords += ', mobile'
  # image = "http://railscasts.com/images/ipod_railscasts_cover.jpg"
  ext = 'm4v'
else
  description += " This is the full resolution version, a lower reoslution for mobile devices is also available."
  # image = "http://railscasts.com/images/railscasts_cover.jpg"
  ext = 'mp4'
end

xml.rss "xmlns:itunes" => "http://www.itunes.com/dtds/podcast-1.0.dtd",  "xmlns:media" => "http://search.yahoo.com/mrss/",  :version => "2.0" do
  xml.channel do
    xml.title title
    xml.link 'http://wordcasts.herokuapp.com'
    xml.description description
    xml.language 'en'
    xml.pubDate @episodes.first.published_at.to_s(:rfc822)
    xml.lastBuildDate @episodes.first.published_at.to_s(:rfc822)
    xml.itunes :author, author
    xml.itunes :keywords, keywords
    xml.itunes :explicit, 'clean'
    xml.itunes :image, :href => image
    xml.itunes :owner do
      xml.itunes :name, author
      xml.itunes :email, 'wordfocuschapel@gmail.com'
    end
    xml.itunes :block, 'no'
    xml.itunes :category, :text => 'Religion & Spirituality' do
      xml.itunes :category, :text => 'Christianity'
    end
    xml.itunes :category, :text => 'Religion & Spirituality' do
      xml.itunes :category, :text => 'Christianity'
    end

    @media.each do |medium|
      xml.item do
        xml.title medium.title
        xml.description medium.pillar
        xml.pubDate medium.created_at.to_s(:rfc822)
        xml.enclosure url: medium.link, type: 'audio/mpg'
        xml.link medium_url(medium)
        xml.guid medium_url(medium)
        xml.itunes :author, author
        xml.itunes :summary, medium.pillar
        xml.itunes :explicit, 'no'
      end
    end
  end
end
