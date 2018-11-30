/**
 * TextArea.jsx - Created by Josep Dols
 * 
 * First edit: 30th Sep. 2018 - Josep Dols and David Redó
 */

import PropTypes from 'prop-types';
import React from 'react';
import css from './RadioGroup.scss';
import classnames from 'classnames';

import RadioButton from '../RadioButton/RadioButton'

class RadioGroup extends React.Component{
    constructor(props){
        super(props);
        this.state = {items: props.items};
    }

    handleChange = event => {
        this.setState({ value: event.target.value });
    };

    render(){
        let buttons = [];
        for (let i = 0; i < this.state.items.length; i++) {
            buttons.push(<RadioButton value={i} checked={this.state.value == i} label={this.state.items[i].label}></RadioButton>);
        }
        return (
            <form action="" value={this.state.value} onChange={this.handleChange}>
                {buttons}
            </form>
        )
    }
}

const props = {};

export default RadioGroup;