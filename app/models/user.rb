class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  #== Constants =========================================

  devise  :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable,
  :omniauthable, omniauth_providers: [:facebook]

  #== Attributes ========================================

  #== Extensions ========================================
  mount_uploader :photo, PhotoUploader

  #== Relationships ======================================

  has_many :posts, foreign_key: :author_id, dependent: :destroy
  has_many :received_requests, class_name: 'Request', through: :posts, dependent: :destroy
  has_many :sent_requests, class_name: 'Request', foreign_key: :messenger_id, dependent: :destroy

  has_many :written_stories, class_name: 'SharedStory', foreign_key: :author_id
  has_many :joined_stories, class_name: 'SharedStory', foreign_key: :member_id

  accepts_nested_attributes_for :posts, :received_requests, :sent_requests


  #== Validations =========================================

  validates :username, uniqueness: true, if: :username
  validates :kind, :inclusion => {in: ["dutchie", "refugee"]}, if: :kind

  #== Scopes ==============================================

  #== Callbacks ===========================================

  #== Class methods =======================================

  def self.find_for_facebook_oauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.picture = auth.info.image
      user.token = auth.credentials.token
      user.token_expiry = Time.at(auth.credentials.expires_at)
    end
  end

  #== Instance methods ========================================
  def full_picture
    if self.photo.file != nil
      self.photo_url
    elsif self.picture
      self.picture
    else
      ""
    end
  end

  def title
    if self.username != "" || nil
      self.username
    elsif self.first_name != "" || nil
      self.first_name
    else
      "Anonymous"
    end

  end
end
