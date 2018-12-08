import React from 'react';
import PropTypes from 'prop-types';
import classnames from 'classnames';
import './Avatar.scss';


const Avatar = ({ src, size }) => {
  const classes = classnames('avatar', {
    'avatar-md': size == 'md',
    'avatar-bg': size == 'bg',
    'avatar-full': size == 'full'
  });

  let backgroundImage = 'linear-gradient(#6dbfb9, #dce9b2)';
  if (src) {
    backgroundImage =`url('${src}'), ${backgroundImage}`;
  }
  const style = { backgroundImage };
  return (
    <div className={classes} style={style} />
  );
};

Avatar.propTypes = {
  src: PropTypes.string,
  size: PropTypes.string
};

Avatar.defaultProps = {
  src: undefined,
  size: 'md'
};

export default Avatar;
