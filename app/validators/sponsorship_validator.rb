class SponsorValidator < ActiveModel::Validator
  MINIMUM_AMOUNT_VALUE = 0

  def validate(record)
    if !record.last_payment_date.nil? && record.last_payment_date > Date.today
      record.errors[:last_payment_date] << "Last payment date must be in the past"
    end
  end
end
