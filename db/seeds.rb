# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
unless AdminUser.where(email: 'admin@example.com').first
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
end


# Adds seeded members:
members = [
  {
    name: 'Anne Hale Miglarese',
    email: 'anne@radiant.earth',
    title: 'Chief Executive Officer',
    description: 'Anne Hale Miglarese, founding CEO of Radiant.Earth, is committed to providing geospatial analytics using imagery and mapping data to empower informed decision-making to help solve the developing world’s greatest social, economic and environmental challenges. Anne has extensive government and private sector experience in Geospatial technologies. Prior to launching Radiant.Earth in Aug. 2016, she served as President and CEO of Fugro Earth Data, as President and CEO of PlanetiQ and a Principal Director at Booz Allen Hamilton. Anne has also worked for the National Oceanic and Atmospheric Administration, the SC Water Resources Commission and the SC Department of Natural Resources.',
    category: 'Staff',
    is_board_member: true
  },
  {
    name: 'Dan Lopez',
    email: 'dan@radiant.earth',
    title: 'Chief Technology Officer',
    description: 'Dan Lopez is an innovative entrepreneur and architect who has advised a wide variety of web-centric businesses and brands by lending his creative, strategic and technological vision. He is a seasoned startup and open-source veteran, with domain expertise in federal, defense and intelligence, big data and consumer web. Having recently served as VP of Technology, Platform and Analytics at UrtheCast, Director of Technology at world-class digital agencies, and Web Architect at the Linux Foundation in the heart of Silicon Valley, he has built bleeding-edge consumer-facing technology and applications from the International Space Station to Times Square. Dan leverages his engineering expertise, and a focus on open source and cloud technologies, to harness imagination and entrepreneurial spirit.',
    category: 'Staff'
  },
  {
    name: 'Anthony Burn',
    email: 'anthony@radiant.earth',
    title: 'Chief Engagement Officer',
    description: 'Anthony Burn is intent on harnessing the full power of GIS enabled data across multiple platforms, to transform individual lives and whole societies for the better. Anthony recently served as a senior consultant for two technical agencies of the United Nations, with a focus on the adoption of emerging technologies into the United Nations Operational Programs. Anthony has also worked with multinational organizations and commercial companies to deploy emerging technologies for the National Laboratory on the International Space Station, with an Earth Observation focus. Previously, Anthony was based in the United Kingdom, helping UK satellite companies develop commercial routes to global markets, as Head of the ADS Group Space Division.',
    category: 'Staff'
  },
  {
    name: 'Hamed Alemohammad',
    email: '',
    title: 'Senior Geospatial Data Scientist',
    description: 'Hamed Alemohammad is passionate about applications of machine learning in geospatial analytics and its possibilities to provide developing countries with tools to monitor their progress toward sustainable development goals. Hamed has extensive expertise in remote sensing and imagery techniques particularly in developing new algorithms for multi-spectral satellite and airborne based observations. He also serves as an elected member of the American Geophysical Union’s technical committee on remote sensing. Prior to joining Radiant.Earth in Sep. 2017, he spent one year at Columbia University and two years at MIT as a postdoctoral research scientist. Hamed received his PhD in Civil and Environmental Engineering from MIT in 2014.',
    category: 'Staff'
  },
  {
    name: 'Louisa Nakanuku-Diggs',
    email: 'louisa@radiant.earth',
    title: 'Marketing and Communications Manager',
    description: 'Louisa Nakanuku-Diggs is enthusiastic about storytelling and visualization and their possibilities to transform complex topics into simple, yet engaging and effective narratives. Louisa has helped governments, development organizations and NGOs focusing on environmental issues in Africa with approaches to convert data to information, and information to knowledge and attitudinal changes. Before joining Radiant in November 2016, she served as an international communication consultant, working with conservation organizations to develop behavior change strategies, incorporating digital communications channels and generating science information products for layman.',
    category: 'Staff'
  },
  {
    name: 'Peter Rabley',
    title: 'Venture Partner, Omidyar Network',
    category: 'Board of Directors',
    is_board_member: true
  },
  {
    name: 'Sanjay Kumar',
    title: 'CEO, Geospatial Media & Communications',
    category: 'Board of Directors',
    is_board_member: true
  },
  {
    name: 'Margie Sullivan',
    title: 'CEO, Sullivan Strategy',
    category: 'Board of Directors',
    is_board_member: true
  },
  {
    name: 'Jerry Johnston',
    title: 'Specialist Leader, Location Intelligence Practice, Deloitte',
    category: 'Board of Directors',
    is_board_member: true
  },
  {
    name: 'Robert Baker',
    title: 'Blockchain for Good Fellow',
    category: 'Fellows'
  },
  {
    name: 'Mmoloki Morapedi',
    title: 'Mandela Washington Fellow',
    category: 'Fellows'
  },
  {
    name: 'Abdelaziz Elmi',
    title: 'Mandela Washington Fellow',
    category: 'Fellows'
  },
  {
    name: 'Kendra Van Pelt',
    title: 'Social Media & Marketing Intern (Summer)',
    category: 'Interns'
  }
]

Member.create(members)
