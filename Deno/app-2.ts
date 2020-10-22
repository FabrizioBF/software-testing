import { assertEquals } from "https://deno.land/std/testing/asserts.ts";

Deno.test("deno test", () => {
    const name = "John";
    const surname = "Doe";
    const fullname = `${name} ${surname}`;

    assertEquals(fullname, "John Doe");
});
