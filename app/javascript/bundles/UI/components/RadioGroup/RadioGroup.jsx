/**
 * RadioGroup.jsx - Created by Josep Dols & David Redó
 *
 * First edit: 30th Nov. 2018 - Josep Dols & David Redó
 * Released: 07th Dec. 2018
 */

import PropTypes from 'prop-types';
import React from 'react';

import RadioButton from '../RadioButton/RadioButton'

class RadioGroup extends React.Component{
    constructor(props){
        super(props);
        this.state = {items: props.items};
        this.state.value = props.value
    }

    handleChange = event => {
        this.setState({ value: event.target.value });
    };

    render(){
        let buttons = [];
        for (let i = 0; i < this.state.items.length; i++) {
            buttons.push(<RadioButton value={i} name={this.props.name} checked={this.state.value == i} label={this.state.items[i].label}></RadioButton>);
        }
        return (
            <div value={this.state.value} onChange={this.handleChange}>
                {buttons}
            </div>
        )
    }
}

const props = {};

export default RadioGroup;