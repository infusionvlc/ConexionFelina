import React from 'react';
import css from './Card.scss';
import Avatar from '../Avatar/Avatar'

const Card = ({ title, image, link, body, action1, action1Link, action2, action2Link, center }) => {
  let classes = 'card';
  let avatar, card, headerBlock, bodyBlock, footerBlock;

  if (center)
    classes += ' center';

  if (image)
    avatar = <span><Avatar src={image}></Avatar><br /></span>;

  if (title)
    headerBlock = <div className="card-header">
      {avatar}
      <h2>{title}</h2>
    </div>;

  if (body)
    bodyBlock = <div className='card-body'>
      {body}
    </div>;

  footerBlock = [];

  if (action1)
    if (action1Link)
      footerBlock.push(<a href={action1Link}><span class="card-action">{action1}</span></a>);
    else
      footerBlock.push(<span class="card-action">{action1}</span>);

  if (action2)
    if (action2Link)
      footerBlock.push(<a href={action2Link}><span class="card-action">{action2}</span></a>);
    else
      footerBlock.push(<span class="card-action">{action2}</span>);


  card = <div className={classes}>
    {headerBlock}
    {bodyBlock}
    <div class="card-footer">{footerBlock}</div>
  </div>;

  if (link)
    return <a href={link}>
      {card}
    </a>
  else
    return card
};
export default Card;