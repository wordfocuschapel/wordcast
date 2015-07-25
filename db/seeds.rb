# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Medium.delete_all

Medium.create!([
  { title: 'Heart Check', media_type: 'audio', pillar: 'faith',
    link: 'https://s3.amazonaws.com/wordfocuschapel/02152015PBJHeartCheck.mp3' },
  { title: 'Faith Part 4', media_type: 'audio', pillar: 'faith',
    link: 'https://s3.amazonaws.com/wordfocuschapel/04192015PBJFaithPart4.mp3' },
  { title: 'The Speaking Faith', media_type: 'audio', pillar: 'faith',
    link: 'https://s3.amazonaws.com/wordfocuschapel/04262015PBJTheSpeakingFaith.mp3' },
  { title: 'Vision Part 1', media_type: 'audio', pillar: 'vision',
    link: 'https://s3.amazonaws.com/wordfocuschapel/05032015PBJVision.mp3' },
  { title: 'Vision Part 2', media_type: 'audio', pillar: 'vision',
    link: 'https://s3.amazonaws.com/wordfocuschapel/05102015PBJVisionPart2.mp3' },
  { title: 'Vision Part 3: Preparation', media_type: 'audio', pillar: 'vision',
    link: 'https://s3.amazonaws.com/wordfocuschapel/05172015PBJVisionPt3Preparation.mp3' },
  { title: 'The Cost of Vision', media_type: 'audio', pillar: 'vision',
    link: 'https://s3.amazonaws.com/wordfocuschapel/05242015PBJCost+of+Vision.mp3' },
  { title: 'The Holy Spirit Part 1', media_type: 'audio', pillar: 'holy_spirit',
    link: 'https://s3.amazonaws.com/wordfocuschapel/053115PBJVisionPt4Preparation.mp3' },
  { title: 'Fruits of The Spirit', media_type: 'audio', pillar: 'holy_spirit',
    link: 'https://s3.amazonaws.com/wordfocuschapel/06072015PBJHolySpiritParrt1.mp3' },
  { title: 'The Gifts of The Holy Ghost', media_type: 'audio', pillar: 'holy_spirit',
    link: 'https://s3.amazonaws.com/wordfocuschapel/06142015PBJFruitsOfTheSpirit.mp3' },
  { title: 'The Baptism of The Holy Spirit', media_type: 'audio', pillar: 'holy_spirit',
    link: 'https://s3.amazonaws.com/wordfocuschapel/06212015PBJTheGiftsofTheHolyGhost.mp3' },
  { title: 'GOAP Special Healing Service', media_type: 'audio', pillar: 'healing',
    link: 'https://s3.amazonaws.com/wordfocuschapel/06282015PBJTheBaptsimofTheHolySpirit.mp3' },
  { title: '10 Points on Healing', media_type: 'audio', pillar: 'healing',
    link: 'https://s3.amazonaws.com/wordfocuschapel/07032015PBJGOAPSpecialHealingService.mp3' },
  { title: 'How Sin Affects Healing', media_type: 'audio', pillar: 'healing',
    link: 'https://s3.amazonaws.com/wordfocuschapel/07052015PBJ10PtsOnHealing.mp3' },
  { title: 'Healing Part 4', media_type: 'audio', pillar: 'healing',
    link: 'https://s3.amazonaws.com/wordfocuschapel/07192015SISTOYINHealing.mp3' }
])