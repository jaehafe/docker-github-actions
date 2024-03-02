import { render, screen } from '@testing-library/react';
import Home from '@/app/page';

it('should have Docs test', () => {
  render(<Home />); // arrange

  const myElem = screen.getByText('Docs'); // ACT

  expect(myElem).toBeInTheDocument();
});
