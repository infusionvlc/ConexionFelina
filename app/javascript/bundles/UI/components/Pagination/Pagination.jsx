import PropTypes from 'prop-types';
import React from 'react';
import css from './Pagination.scss';
import classnames from 'classnames';
import Button from '../Button/Button';

const Pagination = ({nrPages, curPage}) => {
    
    const pages = [];
    for(let i = 1; i <= nrPages; i++) {
        if(curPage == i) {
            pages.push(<button class='page page-active' key='${i}'></button>);
        } else {
            pages.push(<button class='page' key='${i}'></button>);
        }
    };

    return (
        <div className='pagination'>
            <Button type='success' content='Success alert' children='Back' />
            {/* <button className='button button-primary button-back'>Back</button> */}
            { pages }
            <Button type='success' content='Success alert' children='Next' />
            {/* <button className='button button-primary button-next'>Next</button> */}
        </div>
    )
        
};

export default Pagination;

Pagination.propTypes = {
    nrPages: PropTypes.number,
    curPage: PropTypes.number
};

Pagination.defaultProps = {
    nrPages: 2,
    curPage: 1
};