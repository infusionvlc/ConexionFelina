import PropTypes from 'prop-types';
import React from 'react';
import css from './Input.scss';
import classnames from 'classnames';

const Input = ({type, name, value}) => {
  return <input className="input" type={type} name={name} value={value}/>;
};

export default Input;

Input.propTypes = {
  type: PropTypes.string.isRequired,
  value: PropTypes.string,
  name: PropTypes.string
}

Input.defaultProps = {
  type: "text"
}; 