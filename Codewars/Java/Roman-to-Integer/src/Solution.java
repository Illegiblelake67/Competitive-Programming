import java.util.HashMap;
import java.util.Map;
/*
All the test cases are passed but it slower
Result from leetcode
Runtime: 15 ms, faster than 7.92% of Java online submissions for Roman to Integer.
Memory Usage: 43.4 MB, less than 5.31% of Java online submissions for Roman to Integer.
 */
public class Solution {
    public int romanToInt(String s) {
        Map<Character, Integer> roman = new HashMap<>();
        roman.put('I', 1);
        roman.put('V', 5);
        roman.put('X', 10);
        roman.put('L', 50);
        roman.put('C', 100);
        roman.put('D', 500);
        roman.put('M', 1000);

        int result = 0;
        boolean flag = true;
        if(s.length() >= 1 && s.length() <= 15) {
            for (int i = 0; i < s.length(); i++) {
                if(!roman.containsKey(s.charAt(i))) flag = false;
            }
            if(flag) {
                for (int i = 0; i < s.length()-1; i++) {
                    if(roman.get(s.charAt(i)) < roman.get(s.charAt(i+1))){
                        result -= roman.get(s.charAt(i));
                    }else {
                        result += roman.get(s.charAt(i));
                    }
                }
                result += roman.get(s.charAt(s.length()-1));
            }
        }
        return result;
    }

    public static void main(String[] args) {
        Solution sol = new Solution();
        System.out.println(sol.romanToInt("III"));
    }
}
