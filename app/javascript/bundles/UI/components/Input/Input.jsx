/**
 * Input.jsx - Created by Cristian
 * 
 * First edit: 22th Sep. 2018 - Cristian
 */

import PropTypes from 'prop-types';
import React from 'react';
import css from './Input.scss';
import classnames from 'classnames';

const Input = ({type, value, disabled, min, max, maxlength, name, required, src, className }) => {
return <input type={type} value={value} disabled={disabled} 
              required={required} min={min} max={max} 
              name={name} src={src} maxlength={maxlength}
              className={className} />
};

export default Input;

Input.propTypes = {
  type: PropTypes.number,
  value: PropTypes.number,
  disabled: PropTypes.bool,
  required: PropTypes.bool,
  min: PropTypes.number,
  max: PropTypes.number,
  name: PropTypes.string,
  src: PropTypes.string,
  maxlength: PropTypes.number,
  className: PropTypes.string
}
// Specifies the default values for props:
Input.defaultProps = {

}; 