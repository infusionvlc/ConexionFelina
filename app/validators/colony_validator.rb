class ColonyValidator < ActiveModel::Validator
  MAXIMUM_NAME_COLONY_LENGTH = 20
  MAXIMUM_BIO_LENGTH = 512

  def validate(record)
    fields_exist = !record.name.nil?

    if record.name.nil?
      record.errors[:name] << "Name must not be nil"
    end

    if fields_exist && record.name.length > MAXIMUM_NAME_LENGTH
      record.errors[:name] << "Name must have a maximum of 20 characters"
    end

    if !record.bio.nil? && record.bio.length > MAXIMUM_BIO_LENGTH
      record.errors[:bio] << "Description must have a maximum of 512 characters"
    end
  end
end
