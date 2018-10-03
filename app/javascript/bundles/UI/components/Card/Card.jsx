import PropTypes from 'prop-types';
import React from 'react';
import css from './Card.scss';
import classnames from 'classnames';

const Card = ({ mainText, subText, completedText }) => {
  return <div class='card card-main'>
    {mainText}
    <div class='card-secondary'>
      {subText}
    </div>
    <div class='card-completed'>
      {completedText}
    </div>
  </div>
};
export default Card;