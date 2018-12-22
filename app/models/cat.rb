class Cat < ApplicationRecord
  MAXIMUM_NAME_LENGTH = 20
  MAXIMUM_BIO_LENGTH  = 512
  MINIMUM_BIRTH_DATE  = Date.today

  enum gender: [:male, :female]
  enum sterilized: [:yes, :no]

  before_save :caps_name

  has_one_attached :avatar

  has_many :sufferings
  has_many :illnesses, through: :sufferings
  belongs_to :colony
  has_one :adoption
  has_many :sponsors
  has_many :users, through: :sponsors

  accepts_nested_attributes_for :sufferings, reject_if: :all_blank, allow_destroy: true

  validates :name, presence: true, :if => :active_or_basic_info?
  validates :birthday_date, presence: true, :if => :active_or_basic_info?

  validate :birthday_date_must_be_in_the_past, :if => :active_or_basic_info?

  validate :abandoned_date_must_be_plausible, if: :active_or_abandon?

  validates :name, length: { maximum: MAXIMUM_NAME_LENGTH }, :if => :active_or_basic_info?
  validates :bio,  length: { maximum: MAXIMUM_BIO_LENGTH }, :if => :active_or_bio?

  validates :colony_id, presence: true, :if => :active_or_colony?


  def active?
    saved_state == 'active'
  end

  def active_or_basic_info?
    saved_state && (saved_state.include?('basic_info') || active?)
  end

  def active_or_abandon?
    saved_state && (saved_state.include?('abandoned_date') || active?)
  end

  def active_or_bio?
    saved_state && (saved_state.include?('bio') || active?)
  end

  def active_or_colony?
    saved_state && ( saved_state.include?('colony') || active?)
  end

  def caps_name
    self.name.capitalize!
  end

  def birthday_date_must_be_in_the_past
    if birthday_date != nil
      if birthday_date > Date.today
        errors.add(:birthday_date, I18n.t('errors.shared.date_past'))
      end
    end
  end

  def abandoned_date_must_be_plausible
    if abandoned_date && birthday_date && abandoned_date < birthday_date
      errors.add(:abandoned_date, I18n.t('errors.cats.dates'))
    end
  end

end
