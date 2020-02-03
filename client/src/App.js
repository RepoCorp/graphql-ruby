import React from 'react';
import { Query } from '@apollo/react-components';
import gql from 'graphql-tag';

import Product from './product';

export const PRODUCTS_QUERY = gql`
  query GetProducts {
    products {
      name
      id
      description
      manufacturer {
        name
      }
      price
      reviews {
        score
        comment
      }
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
        return <div>{data.products && data.products.map(product => <Product product={product}/>)}</div>
      }}
    </Query>
);

export default App;
