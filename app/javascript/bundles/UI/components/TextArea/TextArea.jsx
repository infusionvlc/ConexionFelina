/**
 * TextArea.jsx - Created by Josep Dols
 *
 * First edit: 19th Sep. 2018 - Josep Dols
 */

import PropTypes from 'prop-types';
import React from 'react';
import css from './TextArea.scss';
import classnames from 'classnames';

const TextArea = ({readonly, cols, rows, name, maxlength, full}) => {
  let className = "textarea";
  if (readonly)
    className += " readonly";
  if (full)
    className += " full-width";
  return <textarea className={className} name={name} cols={cols} rows={rows} maxLength={maxlength} readOnly={readonly}/>;
};

export default TextArea;

TextArea.propTypes = {
  cols: PropTypes.number,
  rows: PropTypes.number,
  name: PropTypes.string,
  maxlength: PropTypes.number,
  readonly: PropTypes.bool,
};

// Specifies the default values for props:
TextArea.defaultProps = {
};