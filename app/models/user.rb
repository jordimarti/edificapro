class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_create :subscribe
  after_create :welcome_email

  def name
    [first_name, last_name].compact.join(' ')
  end

  has_many :chapters
  has_many :purchases

  def subscribe
		mailchimp = Gibbon::API.new(Rails.application.secrets.mailchimp_api_key)
		result = mailchimp.lists.subscribe({
		:id => Rails.application.secrets.mailchimp_list_id,
		:email => {:email => self.email},
		:double_optin => false,
		:update_existing => true,
		:send_welcome => false
		})
		Rails.logger.info("Subscribed #{self.email} to MailChimp") if result
	end

	def welcome_email
		UserMailer.welcome_email(self).deliver
	end

end
