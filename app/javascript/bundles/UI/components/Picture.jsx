/**
 * Picture.jsx - Created by Josep Dols
 * 
 * First edit: 18th Sep. 2018 - Josep Dols
 */

import PropTypes from 'prop-types';
import React from 'react';

var sizes = ['s', 'm', 'b']

export default class Picture extends React.Component {
  static propTypes = {
     // this is passed from the Rails view
    callback: PropTypes.func.isRequired,
    size: PropTypes.oneOf(sizes),
    alt_text: PropTypes.string,
    source: PropTypes.string
  };

  /**
   * @param props - Comes from your rails view.
   */
  constructor(props) {
    super(props);

    // How to set initial state in ES6 class syntax
    // https://reactjs.org/docs/state-and-lifecycle.html#adding-local-state-to-a-class
    this.state = {
        text: this.props.text,
        size: this.props.size,
        alt_text: this.props.alt_text,
        source: this.props.source
    };

  }

  render() {
    return (
        <img src={this.state.source} alt={this.state.alt_text} />
    );
  }
}

// Specifies the default values for props:
Picture.defaultProps = {
    size: 'm'
};