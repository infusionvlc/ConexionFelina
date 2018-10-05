import PropTypes from 'prop-types';
import React from 'react';
import css from './Pagination.scss';
import classnames from 'classnames';

const types = ['page', 'page-active'];

const Pagination = ({type}) => {
    return (
        <div className='pagination'>
            <button className='button button-primary button-back'>Back</button>
            <div className='page page-active'></div>
            <div className={type}></div>
            <button className='button button-primary button-next'>Next</button>
        </div>
    )
        
};

export default Pagination;

Pagination.propTypes = {
    type: PropTypes.oneOf(types),
};

Pagination.defaultProps = {

};