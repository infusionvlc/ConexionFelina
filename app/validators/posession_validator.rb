class PosessionValidator < ActiveModel::Validator
  def validate(record)
    date = record.date

    if date.nil?
      record.errors[:date] << 'Possesion date is nil'
    end

    dates_exists = !date.nil?

    if dates_exists && record.date >= Date.today
      record.errors[:date] << 'Today must be later than the date'
    end
  end
end