import PropTypes from 'prop-types';
import React from 'react';
import css from './Alert.scss';
import classnames from 'classnames';

var types = ['primary', 'error', 'warning', 'success', 'disabled'];

const Alert = ({type, children}) => {
  const classes = classnames('alert', {
    'alert-primary': type == 'primary',
    'alert-success': type == 'success',
    'alert-warning': type == 'warning',
    'alert-error': type == 'error',
    'alert-disabled': type == 'disabled'
  });
  
  return <div className={classes}>{children}</div>
};

export default Alert;

Alert.propTypes = {
  type: PropTypes.oneOf(types),
}

// Specifies the default values for props:
Alert.defaultProps = {
    type: 'primary',
    children: 'Standard alert'
};