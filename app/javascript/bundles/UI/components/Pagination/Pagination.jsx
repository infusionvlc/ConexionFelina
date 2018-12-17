import PropTypes from 'prop-types';
import React from 'react';
import css from './Pagination.scss';
import classnames from 'classnames';
import Button from '../Button/Button';
import { parse } from 'querystring';

class Pagination extends React.Component {
    constructor(props) {
        super(props);
        this.state = { nPages: props.nPages, currentPage: props.currentPage };

        this.nextPage = this.nextPage.bind(this);
        this.previousPage = this.previousPage.bind(this);

        console.log('nPages is: ' + this.state.nPages)
        console.log('currentPage is: ' + this.state.currentPage)
    }

    nextPage() {
        this.setState(state => ({
            currentPage: parseInt(state.currentPage) + 1
        }));
    }

    previousPage() {
        this.setState(state => ({
            currentPage: parseInt(state.currentPage) - 1
        }));
    }

    render() {
        const pages = [];
        for (let i = 1; i <= this.state.nPages; i++) {
            if (this.state.currentPage == i) {
                pages.push(<button className='page page-active' page={i}></button>);
            } else if (this.state.currentPage > i) {
                pages.push(<button className='page page-past' page={i}></button>);
            } else {
                pages.push(<button className='page' page={i}></button>);
            }
        };

        if (this.state.currentPage == 1) {
            return (
                <div className='pagination'>
                    <Button style={{ visibility: 'hidden' }} type='success' onClick={this.previousPage}>Back</Button>
                    {pages}
                    <Button type='success' onClick={this.nextPage}>Next</Button>
                </div>
            )
        } else if (this.state.currentPage == this.state.nPages) {
            return (
                <div className='pagination'>
                    <Button type='success' onClick={this.previousPage}>Back</Button>
                    {pages}
                    <Button style={{ visibility: 'hidden' }} type='success' onClick={this.nextPage}>Next</Button>
                </div>
            )
        } else {
            return (
                <div className='pagination'>
                    <Button type='success' onClick={this.previousPage}>Back</Button>
                    {pages}
                    <Button type='success' onClick={this.nextPage}>Next</Button>
                </div>
            )
        }
    }
}

export default Pagination;

Pagination.propTypes = {
    nPages: PropTypes.number,
    currentPage: PropTypes.number
};

Pagination.defaultProps = {
    nPages: 3,
    currentPage: 1
};