# frozen_string_literal: true

class Link < ApplicationRecord
  validates_presence_of :url
  validates :url, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])
  validates_uniqueness_of :token
  validates :url, length: { in: 3..255 }
  validates :token, length: { in: 5..15 }

  before_validation :generate_token
  has_many :visits, dependent: :delete_all, validate: false

  def short
    Rails.application.routes.url_helpers.tiny_url(token: token)
  end

  def add_visitor(ip)
    self.clicks += 1
    visit = Visit.new(ip: ip)
    visits << visit
    save
  end

  def last_client_ip
    visits.last&.ip
  end

  private

  def generate_token
    self.token = SecureRandom.uuid[0..5] if !token || token.empty?
  end
end
