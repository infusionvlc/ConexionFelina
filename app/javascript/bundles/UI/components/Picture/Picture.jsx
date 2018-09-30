/**
 * Picture.jsx - Created by Josep Dols
 * 
 * First edit: 18th Sep. 2018 - Josep Dols
 */

import PropTypes from 'prop-types';
import React from 'react';
import css from './Picture.scss';
import classnames from 'classnames';

var sizes = ['s', 'm', 'b']

const Picture = ({source, alt_text, size}) => {

  const classes = classnames('picture', {
    s: size == 's',
    m: size == 'm',
    b: size == 'b'
  });

  return <img className={classes} src={source} alt={alt_text} />
};

export default Picture;

Picture.propTypes = {
  size: PropTypes.oneOf(sizes),
  source: PropTypes.string,
  alt_text: PropTypes.string
}

// Specifies the default values for props:
Picture.defaultProps = {
    size: 'm'
};