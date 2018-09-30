import PropTypes from 'prop-types';
import React from 'react';
import css from './Alert.scss';
import classnames from 'classnames';

var types = ['standard', 'error', 'warning', 'succes'];


const Alert = ({type, children}) => {
  const classes = classnames('alert', {
    'alert-standard': type == 'standard',
    'alert-error': type == 'error',
    'alert-warning': type == 'warning',
    'alert-succes': type == 'succes'
  });
  
  return <div className={classes}>{children}</div>
};

export default Alert;

Alert.propTypes = {
  type: PropTypes.oneOf(types),
}

// Specifies the default values for props:
Alert.defaultProps = {
    type: 'standard',
    children: 'Standard alert'
};