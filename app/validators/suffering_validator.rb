class SufferingValidator < ActiveModel::Validator
  def validate(record)
    if !record.diagnosis_date.nil? && record.diagnosis_date > Date.today
      record.errors.add(:diagnosis_date, t('errors.shared.date_past'))
    end
    if record.status.eql?(4) && record.dischargement_date.nil?
      record.errors.add(:dischargement_date,
                        t('errors.sufferings.dischargement_not_nil'))
    end
  end
end
