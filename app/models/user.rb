class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates_presence_of :name, :on=>:create
  validates_presence_of :age, :on=>:create
  validates_presence_of :gender, :on=>:create
  validates_presence_of :company, :on=>:create
  validates :phoneNumber, format: { with: /\d{10}/, allow_blank: false, message: "must be 10 digits" }
  validates :phoneNumberSecondary, format: { with: /\d{10}/, allow_blank: true, message: "must be 10 digits or blank" }

  #validate :password_complexity, :on=>:create
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

  #def password_complexity
  #  if password.present? and not password.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d). /)
  #    errors.add :password, "must include at least one lowercase letter, one uppercase letter, and one digit"
  #  end
  #end

  def specialtyCheck
    errors.add(:specialty, "Error, must select specialty") unless specialty != "Select One"
  end

end
