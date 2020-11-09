const welcome = guest => `Hello, ${guest}!`;
describe('welcome()', () => {
    it('says hello', () => {
	expect(welcome('Jest Framework')).toBe('Hello, Jest Framework!');
    });
});
