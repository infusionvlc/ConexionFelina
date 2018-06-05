class SponsorValidator < ActiveModel::Validator

  MINIMUM_AMOUNT_VALUE = 0

  def validate(record)

    fields_exist = !record.start_date.nil? && !record.last_payment_date.nil? && \
                   !record.amount.nil? && !record.renovate.nil?

    if record.start_date.nil?
      record.errors[:start_date] << 'Start date must not be nil'
    end

    if record.last_payment_date.nil?
      record.errors[:last_payment_date] << 'Last payment date must not be nil'
    end

    if record.amount.nil?
      record.errors[:amount] << 'Amount must not be nil'
    end

    if record.renovate.nil?
      record.errors[:renovate] << 'Renovate must not be nil'
    end

    if fields_exist && record.amount <= MINIMUM_AMOUNT_VALUE
      record.errors[:amount] << 'Amount must not be negative nor equal to zero'
    end

    last_payment_date = record.last_payment_date

    if fields_exist && record.last_payment_date > Date.today
      record.errors[:last_payment_date] << 'Last payment date must be in the past'
    end
  end
end