import PropTypes from 'prop-types';
import React from 'react';
import css from './Alert.scss';
import classnames from 'classnames';

var types = ['standard', 'sky', 'fire', 'sun', 'sea'];


const Alert = ({type, content}) => {
  const classes = classnames('alert', {
    'alert-standard': type == 'standard',
    'alert-sky': type == 'sky',
    'alert-fire': type == 'fire',
    'alert-sun': type == 'sun',
    'alert-sea': type == 'sea'
  });

  
  return <div className={classes}>{content}</div>
};

export default Alert;

Alert.propTypes = {
  type: PropTypes.oneOf(types),
}

// Specifies the default values for props:
Alert.defaultProps = {
    type: 'standard',
    content: 'Standard alert'
};