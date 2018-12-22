class PosessionValidator < ActiveModel::Validator
  def validate(record)
    date = record.date

    if date.nil?
      record.errors[:date] << t('errors.shared.date_not_nil')
    end

    dates_exists = !date.nil?

    if dates_exists && record.date >= Date.today
      record.errors[:date] << t('errors.shared.date_past')
    end
  end
end