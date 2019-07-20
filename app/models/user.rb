class User < ActiveRecord::Base
  include Sluggable

  has_many :posts
  has_many :comments
  has_many :votes

  has_secure_password validations: false

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, on: :create, length: { minimum: 5 }

  before_save :generate_slug!

  def two_factor_auth?
    !self.phone.blank?
  end

  def generate_pin!
    self.update_column(:pin, rand(10 ** 6)) # random 6 digit number
  end

  def remove_pin!
    self.update_column(:pin, nil)
  end

  # method is commented out to avoid including actual authentication data on an
  # open source project
  def send_pin_to_twilio
    # account_sid = '[AccountSID]' # replace with actual sid
    # auth_token = '[AuthToken]'  # replace with actual auth token
    # client = Twilio::REST::Client.new(account_sid, auth_token) 
    
    # msg = "Hi, please input the pin to continue to login: #{self.pin}"

    # message = client.messages.create({
    #   from: '[TwilioNumber]', # replace with actual Twilio phone number
    #   to: '[UserNumber]', # replace with code that gets user's phone number
    #   body: msg
    # })
  end

  def admin?
    self.role == 'admin'
  end

  def moderator?
    self.role == 'moderator'
  end

  sluggable_column :username
end
