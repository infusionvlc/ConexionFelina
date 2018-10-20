/**
 * ProgessBar.jsx - Created by David Redó
 * 
 * First edit: 19th Sep. 2018 - David Redó
 */

import PropTypes from 'prop-types';
import React from 'react';
import css from './ProgressBar.scss';
import classnames from 'classnames';

class ProgressBar extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            value: this.props.value,
            max: this.props.max,
            color: this.props.color,
        }
    }
    render(){
        let className = "progressbar";
        if(this.state.color == "sea" | this.state.color == null){
            className += "-sea";
        }else{
            className += "-sky";
        }
        return <progress className={className} value={this.state.value} max={this.state.max}/>
    }
}

export default ProgressBar;