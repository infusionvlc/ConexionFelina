import React from 'react';
import PropTypes from 'prop-types';
import classnames from 'classnames';
import './Switch.scss';

class Switch extends React.Component {
  constructor(props) {
    super(props);
    this.state = { disabled: props.disabled };
  }
  toggleChecked = () => {
    this.setState({
      isChecked: !this.state.isChecked
    });
  }

  render() {
    return (
      <label className={classnames('switch', {'large': this.props.large === true})}>
        <input type="checkbox" name={this.props.name} onClick={this.toggleChecked} defaultChecked={this.state.isChecked} disabled={this.props.disabled} />
        <span className="labels">
          <span className="label off">
            {this.props.offLabel}
          </span>
          <span className="label on">
            {this.props.onLabel}
          </span>
          <span className="selector" />
        </span>
      </label>
    );
  }
}

Switch.propTypes = {
  onLabel: PropTypes.string,
  offLabel: PropTypes.string,
  large: PropTypes.bool,
  onChange: PropTypes.func,
  defaultChecked: PropTypes.bool,
  disabled: PropTypes.bool,
};

Switch.defaultProps = {
  onLabel: 'ON',
  offLabel: 'OFF',
  large: false,
  onChange: null,
  defaultChecked: false,
  disabled: false,
};

export default Switch;
