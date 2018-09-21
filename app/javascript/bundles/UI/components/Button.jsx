import PropTypes from 'prop-types';
import React from 'react';
import classnames from 'classnames';


var variants = ['standard', 'important']

export default class Tag extends React.Component {
  static propTypes = {
    text: PropTypes.string.isRequired,
    variant: PropTypes.oneOf(variants)
  };

  /**
   * @param props - Comes from your rails view.
   */
  constructor(props) {
    super(props);

    // How to set initial state in ES6 class syntax
    this.state = {
      text: this.props.text,
      variant: this.props.variant
     };
  }

  render() {

    let classes = classnames('tag', {
      standard: this.state.variant == 'standard',
      important: this.state.variant == 'important'
    })

    return (
      <span
        id={this.props.id}
        className={classes}>{this.state.text}</span>
    );
  }
}

// Specifies the default values for props:
Tag.defaultProps = {
  variant: 'standard'
};
