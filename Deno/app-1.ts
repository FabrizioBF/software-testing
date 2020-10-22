// tape - JavaScript testing framework
import * as test from "tape";

test("Math test", (t) => {
    t.equal(4, 2 + 2);
    t.true(5 > 2 + 2);
    t.false(1 > 1 + 2);
    t.isEqual(10, 10);

    t.end();
});
