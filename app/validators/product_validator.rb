class ProductValidator < ActiveModel::Validator
  MAXIMUM_NAME_LENGTH = 50
  MINIMUM_STOCK_PRICE_VALUE = 0

  def validate(record)
    fields_exist = !record.name.nil? && !record.stock.nil? && !record.price.nil?

    if record.name.nil?
      record.errors[:name] << "Name must not be nil"
    end

    if record.stock.nil?
      record.errors[:stock] << "Stock must not be nil"
    end

    if record.price.nil?
      record.errors[:price] << "Price must not be nil"
    end

    if fields_exist && record.name.length > MAXIMUM_NAME_LENGTH
      record.errors[:name] << "Name must have a maximum of 50 characters"
    end

    if fields_exist && record.stock <= MINIMUM_STOCK_PRICE_VALUE
      record.errors[:stock] << "Stock must not be negative nor equal to zero"
    end

    if fields_exist && record.price <= MINIMUM_STOCK_PRICE_VALUE
      record.errors[:stock] << "Price must not be negative nor equal to zero"
    end
  end
end
