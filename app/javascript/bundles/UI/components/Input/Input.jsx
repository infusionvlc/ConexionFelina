import PropTypes from 'prop-types';
import React from 'react';
import css from './Input.scss';
import classnames from 'classnames';

var types = ['text', 'password'];
var sizes = ['full-size', 'half-size'];

const Input = ({type, name, value, disabled, size}) => {
  const customstyle = selectSize(size);  
  return <input className="input" type={type} name={name} value={value} disabled={disabled} style={customstyle}/>;
};

function selectSize(size) {
  switch(size) {
    case 'full-size':
      return { width: '100%' };
    case 'half-size':
      return { width: '50%' };
  }
}

export default Input;

Input.propTypes = {
  type: PropTypes.oneOf(types),
  value: PropTypes.string,
  name: PropTypes.string,
  disabled: PropTypes.bool,
  size: PropTypes.oneOf(sizes)
};

Input.defaultProps = {
  type: "text"
}; 