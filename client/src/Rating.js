import React from 'react';

const Rating = ({ reviews }) => {
    let promedio = 0;
    reviews.forEach(review =>
        promedio += review.score
    );

    let stars = parseInt(promedio/reviews.length);
    let starshtml = '';
    for (let i=0; i< stars; i++) {
        starshtml += "<a href='#'><span class='ion-ios-star'></span></a>"
    }
    return (
        <div className="rating">
            <p className="text-right mb-0">
                <div dangerouslySetInnerHTML={{ __html: starshtml }}></div>
            </p>
        </div>
    );
};

export default Rating;
