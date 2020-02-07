import React from 'react';
import { Query } from '@apollo/react-components';
import gql from 'graphql-tag';

import Product from './product';

export const PRODUCTS_QUERY = gql`
  query GetProducts {
    products {
      name
      manufacturer {
        name
      }
      price
      reviews {
        score
      }
      photoUrl
    }
  }
`;

const App = () => (
    <Query query={PRODUCTS_QUERY}>
      {result => {
        const { loading, error, data } = result;

        if (loading) {
          return <div>Loading</div>;
        }
        if (error) {
          return <h1>ERROR</h1>;
        }
        return (data.products.map(product => <Product product={product}/>))
      }}
    </Query>
);

export default App;
