class DonationValidator < ActiveModel::Validator
  MINIMUM_AMOUNT_VALUE = 0

  def validate(record)
    if !record.date.nil? && record.date > Date.today
      record.errors[:date] << "Date must be in the past"
    end
  end
end
