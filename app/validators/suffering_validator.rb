class SufferingValidator < ActiveModel::Validator
  def validate(record)
    if !record.diagnosis_date.nil? && record.diagnosis_date > Date.today
      record.errors[:diagnosis_date] << "Diagnosis date must be in the past"
    end
    if record.dischargement_date.nil? && record.status != 'healty'
      record.errors[:dischargement_date] << 'needs to be filled in for a sick cat'
    end
  end
end
