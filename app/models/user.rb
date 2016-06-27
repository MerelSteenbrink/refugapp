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

  has_many :shared_stories
  has_many :written_stories, class_name: 'SharedStory', foreign_key: :author_id, dependent: :destroy
  has_many :joined_stories, class_name: 'SharedStory', foreign_key: :member_id, dependent: :destroy

  accepts_nested_attributes_for :posts, :received_requests, :sent_requests


  #== Validations =========================================

  validates :username, presence: true, uniqueness: true, if: :regular_signup_or_existing_user?, length: {minimum: 3, maximum: 30}
  validates :first_name, presence: true, if: :regular_signup_or_existing_user?
  validates :last_name, presence: true, if: :regular_signup_or_existing_user?
  validates :kind, presence: true, inclusion: {in: ["dutchie", "refugee"]}, if: :regular_signup_or_existing_user?
  # validates :description, presence: true, if: :regular_signup_or_existing_user?
  validates :city, presence: true, if: :regular_signup_or_existing_user?
  validates :email, presence: true, uniqueness: true, if: :regular_signup_or_existing_user?

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

  # This method will return the username of an user, when he doesn't have this it
  # will return the first name and else "anonymous"
  def title
    if self.username != "" && !self.username.nil?
      self.username
    elsif self.first_name != "" && !self.first_name.nil?
      self.first_name
    else
      "Anonymous"
    end

  end

  # This instancemethod will return all the stories where a user is either a member or a author
  def shared_stories
    self.joined_stories + self.written_stories
  end


  def requests
    self.sent_requests + self.received_requests
  end

  # This instancemethod will return all the connections
  # This are people that you sent or received a request to or from which has the status accepted
  def connections
    connections = []
    self.requests.each do |request|
      if request.status == "accepted"
        if request.post.author == self
          connections << request.messenger
        else
          connections << request.post.author
        end
      end
    end
    connections
  end

  private

  def regular_signup_or_existing_user?
   (new_record? && provider.nil?) || persisted?
 end

end

