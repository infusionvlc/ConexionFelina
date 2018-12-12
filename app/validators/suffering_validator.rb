class SufferingValidator < ActiveModel::Validator
  def validate(record)
    if !record.diagnosis_date.nil? && record.diagnosis_date > Date.today
      record.errors.add(:diagnosis_date, 'Diagnosis date must be in the past')
    end
    if record.status.eql?(4) && record.dischargement_date.nil?
      record.errors.add(:dischargement_date,
                        'Needs to be filled in for a healthy cat')
    end
  end
end
