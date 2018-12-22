module ApplicationHelper
  def random_greeting
    ["Hi", "Hola", "Halo", "Bonjour", "Ciao", "Olà", "Namaste", "Salaam", "Ohayō", "Merhaba", "Sannu", "Habari", "Ni hau"].sample
  end

  def sidebar_links
    links = [{title: t('navbar.home'), url: '/'},
             {title: t('navbar.cats'), url: cats_path},
             {title: t('navbar.colonies'), url: colonies_path}]
             #{title: 'Tasks', url: '/'},
             #{title: 'Adoptions', url: '/'},
             #{title: 'Sponsors', url: '/'},
             #{title: 'Messages', url: '/'}]

    if current_user.nil?
      links += [{title: t('navbar.sign_in'), url: new_user_session_path},
                {title: t('navbar.sign_up'), url: join_path}]
    else
      links += [{title: t('navbar.sign_out'), url: destroy_user_session_path, delete: true}]
    end
  end


  # Returns an array of the possible key/i18n values for the enum
  # Example usage:
  # enum_options_for_select(User, :approval_state)
  def enum_options_for_select(class_name, enum)
    class_name.send(enum.to_s.pluralize).map do |key, _|
      [enum_i18n(class_name, enum, key), key]
    end
  end

  # Returns the i18n version the models current enum key
  # Example usage:
  # enum_l(user, :approval_state)
  def enum_l(model, enum)
    enum_i18n(model.class, enum, model.send(enum))
  end

  # Returns the i18n string for the enum key
  # Example usage:
  # enum_i18n(User, :approval_state, :unprocessed)
  def enum_i18n(class_name, enum, key)
    I18n.t("activerecord.enums.#{class_name.model_name.i18n_key}.#{enum.to_s.pluralize}.#{key}")
  end

end
