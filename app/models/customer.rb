class Customer
  include Mongoid::Document
  include ActiveModel::SecurePassword
  
  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :address, type: String
  field :password_digest, type: String
  field :is_admin, type: Boolean, default: false

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates_uniqueness_of :email
	validates :address, presence: true
	validates :password, :presence => true,
                       :length => {:minimum => 6},
                       :on => :create
  validates :password_confirmation, :presence => true,
                       :length => {:minimum => 6},
                       :on => :update

	has_secure_password
	has_many :orders

  end


