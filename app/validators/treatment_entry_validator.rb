class TreatmentEntryValidator < ActiveModel::Validator
  MAXIMUM_CHARACTERS = 1024

  def validate(record)
    if !record.date.nil? && record.date > Date.today
      record.errors[:date] << " date must be in the past"
    end
  end
end
