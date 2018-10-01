import PropTypes from "prop-types";
import React from "react";
import "./Button.scss";
import classnames from "classnames";

var types = ["primary", "error", "warning", "success", "disabled"];

const Button = ({ type, children, block, transparent, ...rest }) => {
  const classes = classnames("button", {
    "button-primary": type === "primary",
    "button-success": type === "success",
    "button-warning": type === "warning",
    "button-error": type === "error",
    "button-disabled": type === "disabled",
    "button-block": block,
    "button-transparent": transparent
  });

  return (
    <button {...rest} className={classes}>
      {children}
    </button>
  );
};

export default Button;

Button.propTypes = {
  type: PropTypes.oneOf(types)
};

// Specifies the default values for props:
Button.defaultProps = {
  type: "primary",
  children: "Button"
};
