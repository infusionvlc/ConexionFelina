import PropTypes from 'prop-types';
import React from 'react';
import classnames from 'classnames';


var placement = ['top', 'right', 'botton', 'left'];
var buttonType = ['primary', 'error', 'warning', 'success', 'disabled'];

const ToolTipButton = ({ buttonType, placement, text, children, block, transparent, ...rest }) => {
  const classes = classnames('button', {
    'button-primary': buttonType === 'primary',
    'button-success': buttonType === 'success',
    'button-warning': buttonType === 'warning',
    'button-error': buttonType === 'error',
    'button-disabled': buttonType === 'disabled',
    'button-block': block,
    'button-transparent': transparent
  });

  return (
     <button
     {...rest} 
     className={classes} 
     data-toggle="tooltip" 
     data-placement={placement}
     title={text}>
      {children}
    </button>
  );
};

export default ToolTipButton;

ToolTipButton.propTypes = {
  placement: PropTypes.oneOf(placement).isRequired,
  button: PropTypes.object.isRequired,
  text: PropTypes.string.isRequired,
  buttonType: PropTypes.oneOf(buttonType).isRequired
};
