import React from 'react';

const Product = ({ product }) => {

  let promedio = 0;
  product.reviews.forEach(review =>
      promedio += review.score
  )
  let stars = parseInt(promedio/product.reviews.length);
  let starshtml = '';
  for (let i=0; i< stars; i++) {
    starshtml += "<a href='#'><span class='ion-ios-star'></span></a>"
  }
  return (
    <div className="col-sm-12 col-md-6 col-lg-3 d-flex">
      <div className="product d-flex flex-column">
        <a href="#" className="img-prod"><img className="img-fluid" src={product.photoUrl}
                                              alt="Colorlib Template" />
          <span className="status">50% Off</span>
          <div className="overlay"></div>
        </a>
        <div className="text py-3 pb-4 px-3">
          <div className="d-flex">
            <div className="cat">
              <span>{product.manufacturer.name}</span>
            </div>
            <div className="rating">
              <p className="text-right mb-0">
                <div dangerouslySetInnerHTML={{ __html: starshtml }}></div>
              </p>
            </div>
          </div>
          <h3><a href="#">{product.name}</a></h3>
          <div className="pricing">
            <p className="price"><span className="mr-2 price">${product.price}.00</span></p>
          </div>
          <p className="bottom-area d-flex px-3">
            <a href="#" className="add-to-cart text-center py-2 mr-1"><span>Add to cart <i
                className="ion-ios-add ml-1"></i></span></a>
            <a href="#" className="buy-now text-center py-2">Buy now<span><i
                className="ion-ios-cart ml-1"></i></span></a>
          </p>
        </div>
      </div>
    </div>
  );
};

export default Product;
