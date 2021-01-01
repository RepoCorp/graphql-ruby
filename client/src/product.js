import React from 'react';
import Rating from './Rating';

const Product = ({ product }) => {

  let { manufacturer, name, price, reviews, photoUrl } = product;

  return (
    <div className="col-sm-12 col-md-6 col-lg-3 d-flex">
      <div className="product d-flex flex-column">
        <img className="img-fluid" src={photoUrl} alt="product single" />
        <div className="text py-3 pb-4 px-3">
          <div className="d-flex">
            <div className="cat">
              <span>{manufacturer.name}</span>
            </div>
            <Rating reviews={reviews} />
          </div>
          <h3><a href="/">{name}</a></h3>
          <div className="pricing">
            <p className="price"><span className="mr-2 price">${price}.00</span></p>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Product;
