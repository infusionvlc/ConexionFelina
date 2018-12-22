class DonationValidator < ActiveModel::Validator
  MINIMUM_AMOUNT_VALUE = 0

  def validate(record)
    if !record.date.nil? && record.date > Date.today
      record.errors[:date] << I18n.t('errors.shared.date_past')
    end
  end
end
