class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :secure_validatable

  validates_presence_of :name, :on=>:create
  validates_presence_of :age, :on=>:create
  validates_presence_of :gender, :on=>:create
  validates_presence_of :company, :on=>:create
  validates_presence_of :inputId, :on=>:create
  validates_uniqueness_of :inputId, :on=>:create
  validates :phoneNumber, format: { with: /\d{10}/, allow_blank: false, message: "must be 10 digits" }
  validates :phoneNumberSecondary, format: { with: /\d{10}/, allow_blank: true, message: "must be 10 digits or blank" }
  validates :inputId, numericality: true

  validate :specialtyCheck , :on=>:create
  validate :differentPhones, :on=>:create

  validate :leaderCheck, :on=>:create
  validate :adminCheck, :on=>:create

  #has_and_belongs_to_many :teams
  has_many :teams
  has_many :projects

  has_many :team_users
  has_many :participated_teams, through: :team_users, source: :team
  
 def join!(team)
   if inteam == false
        participated_teams << team
        inteam = true
   else   
        errors.add(:inputId, "You are in another team")     
    end
 end

 def quit!(team)
   participated_teams.delete(team)
   inteam = false
 end

  def is_member_of?(team)
    participated_teams.include?(team)
  end

  validate :specialtyCheck , :on=>:create

  def specialtyCheck
    errors.add(:specialty, "Error, must select specialty") unless specialty != "Select One"
  end

  def differentPhones
    errors.add(:phoneNumber, "Error, primary and secondary phone numbers can't be the same") unless email != emailSecondary
  end

  def differentEmails
    errors.add(:email, "Error, primary and secondary emails can't be the same") unless phoneNumber != phoneNumberSecondary
  end

  def leaderCheck
    if role == "Leader"
      errors.add(:specialty, "Error, For role of team leader specialty must be team leader") unless specialty == "Team Leader"
      validId = false
      @i = LeaderTable.count  
      for h in 1..@i
        if LeaderTable.where(:id => h).pluck(:leaderId).first == inputId
          validId = true
        end
      end
      errors.add(:role, "Error, Your user id isn't permited to sign up as a team leader") unless validId == true
    end
  end

  def adminCheck
    if role == "Admin"
      errors.add(:specialty, "Error, For role of admin specialty must be admin") unless specialty == "Admin"
      validId = false
      @i = AdminTable.count  
      for h in 1..@i
        if AdminTable.where(:id => h).pluck(:adminId).first == inputId
          validId = true
        end
      end
      errors.add(:role, "Error, Your user id isn't permited to sign up as a admin") unless validId == true
    end
  end

end
