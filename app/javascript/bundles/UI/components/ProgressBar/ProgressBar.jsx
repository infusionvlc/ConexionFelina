/**
 * ProgessBar.jsx - Created by David Redó
 * 
 * First edit: 19th Sep. 2018 - David Redó
 */

import PropTypes from 'prop-types';
import React from 'react';
import css from './ProgressBar.scss';
import classnames from 'classnames';

const ProgressBar = ({value, max, color}) => {
    let className = "progressbar";
    if(color == "sea" | color == null){
        className += "-sea";
    }else{
        className += "-sky";
    }
    return <progress className={className} value={value} max={max}/>
};

export default ProgressBar;

ProgressBar.propTypes = {
    value: PropTypes.string,
    max: PropTypes.string,
    color: PropTypes.string,
};

ProgressBar.defaultProps = {
    max: "100"
};