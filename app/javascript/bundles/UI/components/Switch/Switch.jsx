import React from 'react';
import PropTypes from 'prop-types';
import classnames from 'classnames';
import './Switch.scss';


const Switch = ({
  onLabel, offLabel, onChange, defaultChecked, large,
}) => (
  <label className={classnames('switch', { large })}>
    <input type="checkbox" onChange={onChange} defaultChecked={defaultChecked} />
    <span className="labels">
      <span className="label off">
        {offLabel}
      </span>
      <span className="label on">
        {onLabel}
      </span>
      <span className="selector" />
    </span>
  </label>
);

Switch.propTypes = {
  onLabel: PropTypes.string,
  offLabel: PropTypes.string,
  large: PropTypes.bool,
  onChange: PropTypes.func,
  defaultChecked: PropTypes.bool,
};

Switch.defaultProps = {
  onLabel: 'ON',
  offLabel: 'OFF',
  large: false,
  onChange: null,
  defaultChecked: false,
};

export default Switch;
