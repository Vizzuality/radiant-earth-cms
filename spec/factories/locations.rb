FactoryGirl.define do
  factory :post do
    url 'http://www.example.com'
    title 'My first post'
    short_description 'My first post is about all the things that are important'
    video_url 'http://video.com/my-url'
  end
end
