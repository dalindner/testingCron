class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of    :name, :on=>:create
  validates_presence_of    :age, :on=>:create
  validates_presence_of :gender, :on=>:create
  validate :testCheck, :on=>:create
  validate :testAdmin, :on=>:create

  def testCheck
    errors.add(:name, "Error, name not hi") unless name != "hi"
  end

  def testAdmin
    errors.add(:inputId, "Error, name not hi") unless inputId != "hi"
  end

  def testLeader
    errors.add(:ninputId, "Error, name not hi") unless inputId != "hi"
  end
end
