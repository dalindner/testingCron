class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :secure_validatable

  validates_presence_of :name, :on=>:create
  validates_presence_of :age, :on=>:create
  validates_presence_of :gender, :on=>:create
  validates_presence_of :company, :on=>:create
  validates :phoneNumber, format: { with: /\d{10}/, allow_blank: false, message: "must be 10 digits" }
  validates :phoneNumberSecondary, format: { with: /\d{10}/, allow_blank: true, message: "must be 10 digits or blank" }

  has_many :teams
  has_many :projects

  has_many :team_users
  has_many :participated_teams, through: :team_users, source: :team
  
 def join!(team)
   participated_teams << team
 end

 def quit!(team)
   participated_teams.delete(team)
 end

  def is_member_of?(team)
    participated_teams.include?(team)
  end

  validate :specialtyCheck , :on=>:create

  def testAdmin
    errors.add(:inputId, "test admin")
    if role == "Admin"
      errors.add(:inputId, "selected admin")

      if admin_tables.exists?
      # no business found
      errors.add(:inputId, "admin tables exist")
      else
      # business.ceo = "me"
      errors.add(:inputId, "admin not found")
      end



      if adminTables.where(adminId == inputId).any?
        
      else
        errors.add(:inputId, "Error, non-valid input ID for admin")
      end
    end
  end

  def specialtyCheck
    errors.add(:specialty, "Error, must select specialty") unless specialty != "Select One"
  end

end
