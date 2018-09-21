import PropTypes from 'prop-types';
import React from 'react';
import css from './Tag.scss';
import classnames from 'classnames';


var variants = ['standard', 'sky', 'fire', 'sun', 'sea'];

const Tag = ({text, variant}) => {

  const classes = classnames('tag', {
    standard: variant == 'standard',
    fire: variant == 'fire',
    sky: variant == 'sky',
    sun: variant == 'sun',
    sea: variant == 'sea'
  });

  return <span className={classes}>{text}</span>;
};

export default Tag;

Tag.propTypes = {
  text: PropTypes.string.isRequired,
  variant: PropTypes.oneOf(variants)
};

// Specifies the default values for props:
Tag.defaultProps = {
  variant: 'standard'
};
