class Medium < ActiveRecord::Base
  PILLARS 	 = %w(prayer faith healing consecration wisdom vision word_of_god praise success holy_spirit prosperity supernatural) 
  MEDIA_TYPES = %w(video audio sermon_note)

  validates :pillar, inclusion: { :in => PILLARS }
  validate  :media_type, inclusion: { :in => MEDIA_TYPES }

  PILLARS.each do |pillar|
  	define_method "#{pillar}?" do 
  	  self.pillar == pillar
  	end
  end

  MEDIA_TYPES.each do |media_type|
  	define_meth "#{media_type}" do 
  	  self.pillar == media_type
  	end
  end

  class << self
  	PILLARS.each do |pillar|
  	  define_method "#{pillar}" do 
  	    pillar
  	  end
  	end

  	MEDIA_TYPES.each do |media_type|
  	  define_method "#{media_type}" do
  	  	media_type
  	end
  end
end
