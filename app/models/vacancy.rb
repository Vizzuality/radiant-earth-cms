class Vacancy < ApplicationRecord
  validates :url, format: { with: /\A#{URI.regexp(['http', 'https']).to_s}\z/ },
    if: lambda { |vacancy| vacancy.url.present? }
end
