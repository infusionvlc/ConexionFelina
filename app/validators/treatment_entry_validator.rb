class TreatmentEntryValidator < ActiveModel::Validator

  MAXIMUM_CHARACTERS =1024
 
  def validate(record)
 
    fields_exist = !record.date.nil? && !record.treatment.nil? 
 
     if record.date.nil?
       record.errors[:date] << ' date must not be nil'
     end
 
     if record.treatment.nil?
       record.errors[:treatment] << 'treatment must not be nil'
     end
 
 
     if !record.date.nil? && record.date > Date.today
       record.errors[:date] << ' date must be in the past'
     end

     if !record.notes.nil? && record.notes.length > 1024
       record.errors[:notes] << ' notes must be under 1024 characters'
     end

   end
 end 