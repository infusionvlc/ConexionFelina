/**
 * RadioButton.jsx - Created by David Redó & Josep Dols
 *
 * First edit: 30th Nov. 2018 - David Redó & Josep Dols
 * Released: 07th Dec. 2018
 */

import PropTypes from 'prop-types'
import React from 'react'
import css from './RadioButton.scss'
import classnames from 'classnames'

class RadioButton extends React.Component {
  constructor(props) {
    super(props);
    this.state = { isChecked: false, label: props.label, value: props.value };
  }

  toggleChecked = () => {
    this.setState({
      isChecked: !this.state.isChecked
    });
  }

  toggleOnClick = () => {
    this.setState({
      isChecked: true
    });
  }

  render() {
    return (
      <span className="radio-span">
        <input name={this.props.name} type="radio" className="radiobutton" value={this.props.value} onChange={function(){}} onClick={this.toggleOnClick} checked={this.props.checked}></input>
        <svg width="20px" height="20px" viewBox="0 0 20 20">
          <circle cx="10" cy="10" r="9"></circle>
          <path d="M10,7 C8.34314575,7 7,8.34314575 7,10 C7,11.6568542 8.34314575,13 10,13 C11.6568542,13 13,11.6568542 13,10 C13,8.34314575 11.6568542,7 10,7 Z" className="inner"></path>
          <path d="M10,1 L10,1 L10,1 C14.9705627,1 19,5.02943725 19,10 L19,10 L19,10 C19,14.9705627 14.9705627,19 10,19 L10,19 L10,19 C5.02943725,19 1,14.9705627 1,10 L1,10 L1,10 C1,5.02943725 5.02943725,1 10,1 L10,1 Z" className="outer"></path>
        </svg>
        <label className="radio-label">{this.state.label}</label>
      </span>
    );
  }
}

const props = {};

export default RadioButton;