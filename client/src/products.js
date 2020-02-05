import React from 'react';

const Product = ({ product }) => {
    return (
                <div>
                    <h3>{product.name}</h3>
                    {product.reviews &&
                    product.reviews.map(
                        review =>
                            review && (
                                <h6 key={review.id}>
                                    {review.score}: {review.comment}
                                </h6>
                            ),
                    )}
                </div>
    )}
\};

export default Product;
