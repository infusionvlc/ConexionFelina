import PropTypes from 'prop-types';
import React from 'react';
import './Tag.scss';
import classnames from 'classnames';

var types = ['primary', 'error', 'warning', 'success', 'secondary'];

const Tag = ({ type, children, ...rest }) => {
  const classes = classnames('tag', {
    'tag-primary': type === 'primary',
    'tag-success': type === 'success',
    'tag-warning': type === 'warning',
    'tag-error': type === 'error',
    'tag-secondary': type === 'secondary'
  });

  return (
    <span {...rest} className={classes}>
      {children}
    </span>
  );
};

export default Tag;

Tag.propTypes = {
  type: PropTypes.oneOf(types)
};

// Specifies the default values for props:
Tag.defaultProps = {
  type: 'primary',
  children: 'Text'
};
