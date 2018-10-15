import PropTypes from 'prop-types';
import React from 'react';
import './Sidebar.scss';

const Sidebar = ({ links }) => {
  return (
    <div className="sidebar">
      <div className="header">
        <h1>Hi,<br />Virginia</h1>
        <a href="#" className="notification"></a>
      </div>
      <div className="links">
        {links.map(link => <a href={link.url}>{link.title}</a>)}
      </div>
      <div className="footer">
        <p>Conexión Felina<br />Made with ❤ by INFUSIÓN</p>
      </div>
    </div>
  );
};

export default Sidebar;

Sidebar.propTypes = {
  links: PropTypes.arrayOf(
    PropTypes.shape({
      title: PropTypes.string.isRequired,
      url: PropTypes.string.isRequired
    }).isRequired
  ).isRequired
};

// // Specifies the default values for props:
Sidebar.defaultProps = {
  links: []
};
