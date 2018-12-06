import PropTypes from 'prop-types';
import React from 'react';
import './Button.scss';
import classnames from 'classnames';

var types = ['primary', 'error', 'warning', 'success', 'disabled'];

//const Button = ({ type, children, block, transparent, onclick, ...rest }) => {
class Button extends React.Component {
  constructor(props) {
    super(props);
    this.redirectTo = this.redirectTo.bind(this);
    this.state = {type: props.type, block: props.block,
                  transparent: props.transparent, target: props.target,
                  value: props.value, inverted: props.inverted}
  }

  redirectTo(event) {
    location.href = this.state.target;
  }

  render() {
    const classes = classnames('button', {
      'button-primary': this.state.type === 'primary',
      'button-success': this.state.type === 'success',
      'button-warning': this.state.type === 'warning',
      'button-error': this.state.type === 'error',
      'button-disabled': this.state.type === 'disabled',
      'button-block': this.state.block,
      'button-transparent': this.state.transparent,
      'button-inverted': this.state.inverted
    });
    if (this.state.target)
      return (
        <input type='button' value={this.state.value} onClick={this.redirectTo} className={classes}>
        </input>
      );
    else
      return (
        <button className={classes}>
          {this.state.value}
        </button>
      );
  }
}

export default Button;

Button.propTypes = {
  type: PropTypes.oneOf(types)
};

// Specifies the default values for props:
Button.defaultProps = {
  type: 'primary',
  children: 'Button'
};
