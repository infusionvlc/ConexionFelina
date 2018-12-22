import PropTypes from 'prop-types';
import React from 'react';
import './Sidebar.scss';

const Sidebar = ({ greeting, links, username, footer }) => {
  return (
    <div className="sidebar">
      <div className="header">
        {username ? <span><h1>{greeting},<br />{username}!</h1> <a href="#" className="notification"></a></span> : <h1>{greeting}!</h1>}
      </div>
      <div className="links">
        {links.map(link => link.delete ?
          <a data-method="delete" href={link.url} rel="nofollow">{link.title}</a>
          :
          <a href={link.url}>{link.title}</a>)}
      </div>
      <div className="footer">
        <p>{footer}</p>
      </div>
    </div>
  );
};

export default Sidebar;

Sidebar.propTypes = {
  greeting: PropTypes.string,
  username: PropTypes.string,
  footer: PropTypes.string,
  links: PropTypes.arrayOf(
    PropTypes.shape({
      title: PropTypes.string.isRequired,
      url: PropTypes.string.isRequired,
      delete: PropTypes.bool.isRequired
    }).isRequired
  ).isRequired
};

// // Specifies the default values for props:
Sidebar.defaultProps = {
  greeting: "Hi",
  username: "",
  links: []
};
