class DonationValidator < ActiveModel::Validator
  MINIMUM_AMOUNT_VALUE = 0

  def validate(record)
    fields_exist = !record.amount.nil? && !record.date.nil?

    if record.amount.nil?
      record.errors[:amount] << "Amount must not be nil"
    end

    if record.date.nil?
      record.errors[:date] << "Date must not be nil"
    end

    if fields_exist && record.amount <= MINIMUM_AMOUNT_VALUE
      record.errors[:amount] << "Amount must not be negative nor equal to zero"
    end

    date = record.date

    if fields_exist && record.date > Date.today
      record.errors[:date] << "Date must be in the past"
    end
  end
end
