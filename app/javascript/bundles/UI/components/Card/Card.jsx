import React from 'react';
import css from './Card.scss';

const Card = ({ mainText, bodyText, footerText }) => {
  return <div class='card-header'>
    {mainText}
    <div class='card-body'>
      {bodyText}
    </div>
    <div class='card-footer'>
      {footerText}
    </div>
  </div>
};
export default Card;