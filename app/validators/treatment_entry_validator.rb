class TreatmentEntryValidator < ActiveModel::Validator
  MAXIMUM_CHARACTERS = 1024

  def validate(record)
    if !record.date.nil? && record.date > Date.today
      record.errors[:date] << t('errors.shared.date_past')
    end
  end
end
