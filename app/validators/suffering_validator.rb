class SufferingValidator < ActiveModel::Validator
  def validate(record)
    diagnosis_date = record.diagnosis_date


    if !diagnosis_date.nil? && record.diagnosis_date > Date.today
      record.errors[:diagnosis_date] << 'Diagnosis date must be in the past'
    end
  end
end