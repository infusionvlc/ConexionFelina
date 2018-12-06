module ApplicationHelper
  def sidebar_links
    links = [{title: 'Home', url: '/'},
             {title: 'Cats', url: cats_path},
             {title: 'Colonies', url: colonies_path},
             {title: 'Tasks', url: '/'},
             {title: 'Adoptions', url: '/'},
             {title: 'Sponsors', url: '/'},
             {title: 'Messages', url: '/'}]

    if current_user.nil?
      links += [{title: 'Sign in', url: new_user_session_path},
                {title: 'Sign up', url: new_user_registration_path}]
    else
      links += [{title: 'Sign out', url: destroy_user_session_path, delete: true}]
    end
  end
end
