import React from 'react';
import css from './Card.scss';
import Avatar from '../Avatar/Avatar'

const Card = ({ title, image, link, body, footer, footerLink, center }) => {
  let classes = 'card';
  let avatar, card, headerBlock, bodyBlock, footerBlock;

  if (center)
    classes += ' center';

  if (image)
    avatar = <span><Avatar src={image}></Avatar><br/></span>;

  if (title)
    headerBlock = <div className="card-header">
                    {avatar}
                    <h2>{title}</h2>
                  </div>;

  if (body)
    bodyBlock = <div className='card-body'>
                  {body}
                </div>;

  if (footer)
    if (footerLink)
      footerBlock = <a href={footerLink}><div className='card-footer'>
                      {footer}
                    </div></a>;
    else
      footerBlock = <div className='card-footer'>
                      {footer}
                    </div>;


  card = <div className={classes}>
          {headerBlock}
          {bodyBlock}
          {footerBlock}
        </div>;

  if (link)
    return <a href={link}>
            {card}
           </a>
  else
  return card
};
export default Card;