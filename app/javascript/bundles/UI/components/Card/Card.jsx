import React from 'react';
import css from './Card.scss';
import Avatar from '../Avatar/Avatar'

const Card = ({ title, image, link, body, footer }) => {
  if (link)
    return <a href={link}>
            <div className='card center'>
              <div className="card-header">
                <Avatar src={image}></Avatar>
                <br/>
                <h2>{title}</h2>
              </div>
              <div className='card-body'>
                {body}
              </div>
              <div className='card-footer'>
                {footer}
              </div>
            </div>
          </a>
  else
  return  <div className='card center'>
            <div className="card-header">
              <Avatar src={image}></Avatar>
              <br/>
              <h2>{title}</h2>
            </div>
            <div className='card-body'>
              {body}
            </div>
            <div className='card-footer'>
              {footer}
            </div>
          </div>
};
export default Card;