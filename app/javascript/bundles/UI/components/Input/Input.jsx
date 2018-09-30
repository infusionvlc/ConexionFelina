import PropTypes from 'prop-types';
import React from 'react';
import css from './Input.scss';
import classnames from 'classnames';

var types = ['text', 'password'];

const Input = ({type, name, value,disabled}) => {
  return <input className="input" type={type} name={name} value={value} disabled={disabled}/>;
};

export default Input;

Input.propTypes = {
  type: PropTypes.oneOf(types),
  value: PropTypes.string,
  name: PropTypes.string,
  disabled: PropTypes.bool
}

Input.defaultProps = {
  type: "text"
}; 