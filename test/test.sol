struct S {
    uint sx;
    mapping (uint => bool) sy;
}

enum E { EA, EB, EC }

event V(uint vx, address payable vy);
error R(uint rx, bool[] ry);

contract C {
    modifier m() { _; }

    function f() public {}
}

interface I {
}

library L {
}
