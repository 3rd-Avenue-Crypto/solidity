pragma experimental SMTChecker;

contract C
{
    uint public x;
    function g() public {
		x = 0;
        this.h();
		// Function call is inlined.
		assert(x == 2);
    }
    function h() public {
        x = 2;
    }
}
// ----
// Warning 4661: (151-165): Assertion violation happens here
