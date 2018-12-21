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

        let backButton = null;

        if (this.props.backUrl) {
            backButton = <Button type='success' target={this.props.backUrl} value={this.props.backText}></Button>;
        } else {
            backButton = <Button type='success' onClick={this.previousPage} value={this.props.backText}></Button>;
        }

        if (this.state.currentPage == 1) {
            return (
                <div className='pagination'>
                    <Button style={{ visibility: 'hidden' }} type='success' onClick={this.previousPage} value={this.props.backText}></Button>
                    {pages}
                    <Button type='success' onClick={this.nextPage} value={this.props.nextText}></Button>
                </div>
            )
        } else if (this.state.currentPage == this.state.nPages) {
            return (
                <div className='pagination'>
                    {backButton}
                    {pages}
                    <Button style={{ visibility: 'hidden' }} type='success' onClick={this.nextPage} value={this.props.nextText}></Button>
                </div>
            )
        } else {
            return (
                <div className='pagination'>
                    {backButton}
                    {pages}
                    <Button type='success' onClick={this.nextPage} value={this.props.nextText}></Button>
                </div>
            )
        }
    }
}

export default Pagination;

Pagination.propTypes = {
    nPages: PropTypes.number,
    currentPage: PropTypes.number,
    backText: PropTypes.string,
    nextText: PropTypes.string,
    backUrl: PropTypes.string
};

Pagination.defaultProps = {
    nPages: 3,
    currentPage: 1,
    backText: 'Back',
    nextText: 'Next'
};