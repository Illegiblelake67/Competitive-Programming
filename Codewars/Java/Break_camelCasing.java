/*
Complete the solution so that the function will break up camel casing,
#using a space between words.

Example

"camelCasing"  =>  "camel Casing"
"identifier"   =>  "identifier"
""             =>  ""
*/

import org.junit.Test;
import static org.junit.Assert.assertEquals;
import org.junit.runners.JUnit4;


class Solution {
  public static String camelCase(String input) {
    String nonCamelCasing ="";
    for (char ch : input.toCharArray()){
      if (ch == Character.toUpperCase(ch)) {
        nonCamelCasing += " ";
        nonCamelCasing += ch;
      }else {
        nonCamelCasing += ch;
      }
    }
    return nonCamelCasing;

  }
}

public class SolutionTest {
    @Test
    public void tests() {
      assertEquals( "Incorrect", "camel Casing", Solution.camelCase("camelCasing"));
      assertEquals( "Incorrect", "camel Casing Test", Solution.camelCase("camelCasingTest"));
      assertEquals( "Incorrect", "camelcasingtest", Solution.camelCase("camelcasingtest"));
    }
}
