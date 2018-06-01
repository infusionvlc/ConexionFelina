class TurnValidator < ActiveModel::Validator
  def validate(record)
    start_date = record.start_date
    end_date = record.end_date

    if start_date.nil?
      record.errors[:start_date] << 'Start date is nil'
    end

    if end_date.nil?
      record.errors[:end_date] << 'End date is nil'
    end

    dates_exists = !start_date.nil? && !end_date.nil?

    if dates_exists && record.start_date >= record.end_date
      record.errors[:end_date] << 'End date must be later the end date'
    end
  end
end
