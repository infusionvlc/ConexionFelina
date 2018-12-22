class TurnValidator < ActiveModel::Validator
  def validate(record)
    start_date = record.start_date
    end_date = record.end_date

    dates_exists = !start_date.nil? && !end_date.nil?

    if dates_exists && record.start_date > record.end_date
      record.errors[:start_date] << t('errors.turns.dates')
    end
  end
end
