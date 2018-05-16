class Cat < ApplicationRecord
    enum gender: [:Male, :Famale, :Unknown]
    enum sterelized: [:Yes, :No, :Unknown]
end
