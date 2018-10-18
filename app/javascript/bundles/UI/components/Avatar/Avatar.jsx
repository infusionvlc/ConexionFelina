import React from 'react';
import PropTypes from 'prop-types';
import './Avatar.scss';


const Avatar = ({ src }) => {
  let backgroundImage = 'linear-gradient(#6dbfb9, #dce9b2)';
  if (src) {
    backgroundImage =`url('${src}'), ${backgroundImage}`;
  }
  const style = { backgroundImage };
  return (
    <div className="avatar" style={style} />
  );
};

Avatar.propTypes = {
  src: PropTypes.string,
};

Avatar.defaultProps = {
  src: undefined,
};

export default Avatar;
