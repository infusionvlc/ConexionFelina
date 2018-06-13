class TaskValidator < ActiveModel::Validator
  MAXIMUM_NAME_LENGTH = 50
  MAXIMUM_BIO_LENGTH = 1024

  def validate(record)
    fields_exist = !record.name.nil?

    if record.name.nil?
      record.errors[:name] << "Name must not be nil"
    end

    if fields_exist && record.name.length > MAXIMUM_NAME_LENGTH
      record.errors[:name] << "Name must have a maximum of 50 characters"
    end

    if !record.description.nil? && record.description.length > MAXIMUM_BIO_LENGTH
      record.errors[:description] << "Description must have a maximum of 1024 characters"
    end
  end
end
