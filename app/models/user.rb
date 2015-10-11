class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates_presence_of    :name, :on=>:create
  validates_presence_of    :age, :on=>:create
  validates_presence_of :gender, :on=>:create
  validate :testCheck, :on=>:create


  def testCheck
    errors.add(:name, "Error, name not hi") unless name != "hi"
  end

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

  def testLeader
    errors.add(:inputId, "Error, name not hi") unless inputId != "hi"
  end


end
