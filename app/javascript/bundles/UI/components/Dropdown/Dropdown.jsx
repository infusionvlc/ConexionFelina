import React from 'react';
import css from './Dropdown.scss';

class Dropdown extends React.Component {
    constructor(props) {
        super(props);
        this.state = { isOpen: false};
        console.log('isOpen is: ' + this.state.isOpen)
        this.state.items = [];
        this.state.lastClick = '';
        for (let i = 0; i < props.items.length; i++) {
           this.state.items.push(<li onClick={this.getValue} value={props.items[i]['value']}>{props.items[i]['label']}</li>);
        }
    }

    toggleDropdown = () => {
        this.setState({
            isOpen: !this.state.isOpen
        });
    }

    getValue = (event) => {
        this.state.lastClick = event.target.value;
        this.toggleDropdown();
        console.log(this.state.lastClick)
    }

    render() {
        return (
            <div className='dropdown'>
                <input name={this.props.name} value={this.state.lastClick} type="hidden"/>
                <div className='dropdown-component' onClick={this.toggleDropdown}><span>{this.state.lastClick}</span><img src="/down.svg" className='arrow'/></div>
                {
                    this.state.isOpen ? (
                        <div className='dropdown-list'>{ this.state.items }</div>
                    ):
                    (
                        null
                    )
                }
         
            </div>

        );
        
    }
}

const props = {};

export default Dropdown;

