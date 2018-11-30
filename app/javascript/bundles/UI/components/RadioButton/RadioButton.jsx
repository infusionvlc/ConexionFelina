/**
 * RadioButton.jsx - Created by David Redó & Josep Dols
 * 
 * First edit: 30th Nov. 2018 - David Redó & Josep Dols
*/

import PropTypes from 'prop-types'
import React from 'react'
import css from './RadioButton.scss'
import classnames from 'classnames'

class RadioButton extends React.Component {
  constructor(props) {
    super(props);
    this.state = { isChecked: false };
    console.log('isChecked is ' + this.state.isChecked);
  }

  toggleChecked = () => {
    this.setState({
      isChecked: !this.state.isChecked
    });
    console.log('isChecked is ' + this.state.isChecked);
  }

  toggleOnClick = () => {
    this.setState({
      isChecked: true
    });
    console.log('isChecked se va a True');
  }

  render() {
    return (
      <input type="radio" className="radiobutton" onChange={function(){}} onClick={this.toggleOnClick} checked={this.state.isChecked}></input>
    );
  }
}

const props = {};

export default RadioButton;