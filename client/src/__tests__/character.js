import React from 'react';
import { render } from '@testing-library/react';

import Product from '../Character';

import {
  empty,
  hero_no_friends,
  empty_array_friends,
  friend_without_appearsIn
} from '../__mocks__/data';

describe('Character', () => {
  it('returns markup for null response', () => {
    const { container } = render(<Product hero={empty} />);
    expect(container).toMatchSnapshot();
  });
  it('returns markup for a hero with no friends', () => {
    const { container } = render(<Product hero={hero_no_friends} />);
    expect(container).toMatchSnapshot();
  });
  it('returns markup for empty array of friends', () => {
    const { container } = render(<Product hero={empty_array_friends} />);
    expect(container).toMatchSnapshot();
  });
  it('returns markup for a friend without an appearsIn', () => {
    const { container } = render(<Product hero={friend_without_appearsIn} />);
    expect(container).toMatchSnapshot();
  });
});
