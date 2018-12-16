import React from 'react';
import css from './Dropdown.scss';

class Dropdown extends React.Component {
    constructor(props) {
        super(props);
        this.state = { isOpen: false};
        this.state.items = [];
        this.state.lastClick = '';
        this.state.lastLabel = '';
        for (let i = 0; i < props.items.length; i++) {
           this.state.items.push(<li onClick={this.getValue} value={props.items[i][1]}>{props.items[i][0]}</li>);
        }
    }

    toggleDropdown = () => {
        this.setState({
            isOpen: !this.state.isOpen
        });
    }

    getValue = (event) => {
        this.state.lastClick = event.target.value;
        this.state.lastLabel = event.target.innerHTML;
        this.toggleDropdown();
    }

    render() {
        return (
            <div className='dropdown'>
                <input name={this.props.name} value={this.state.lastClick} type="hidden"/>
                <div className='dropdown-component' onClick={this.toggleDropdown}><span>{this.state.lastLabel}</span><img src="/down.svg" className='arrow'/></div>
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

