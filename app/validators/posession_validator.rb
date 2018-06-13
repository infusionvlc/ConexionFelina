class PosessionValidator < ActiveModel::Validator
  def validate(record)
    posession_date = record.date
    today = record.end_date

    if posession_date.nil?
      record.errors[:posession_date] << 'Possesion date is nil'
    end

    if today.nil?
      record.errors[:today] << 'Today date is nil'
    end

    dates_exists = !posession_date.nil? && !today.nil?

    if dates_exists && record.posession_date >= record.today
      record.errors[:posession_date] << 'Today must be later than the possesion_date'
    end
  end
end