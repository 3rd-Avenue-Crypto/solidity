pragma experimental SMTChecker;

contract C
{
	uint x;
	function f(uint y) public {
		x = y;
	}
	function g(uint y) public {
		require(y < 1000);
		this.f(y);
		assert(x < 1000);
	}
}
// ----
// Warning 4661: (161-177): Assertion violation happens here
