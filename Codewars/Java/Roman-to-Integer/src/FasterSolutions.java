import java.util.stream.Stream;

public class FasterSolutions {
    public int romanToInt(String s) {
        int result = 0;
        if(s.length() >= 1 && s.length() <= 15){
            for (int i = 0; i < s.length()-1; i++) {
                if(getRomanVal(s.charAt(i)) >= getRomanVal(s.charAt(i+1))) {
                    result += getRomanVal(s.charAt(i));
                }else {
                    result -= getRomanVal(s.charAt(i));
                }
            }
            result += getRomanVal(s.charAt(s.length()-1));
        }
        return result;
    }

    public int getRomanVal(char c) {
        switch (c) {
            case 'I':
                return 1;
            case 'V':
                return 5;
            case 'X':
                return 10;
            case 'L':
                return 50;
            case 'C':
                return 100;
            case 'D':
                return 500;
            case 'M':
                return 1000;
            default:
                return 0;
        }
    }

    public static void main(String[] args) {
        FasterSolutions sol = new FasterSolutions();
        System.out.println(sol.romanToInt("III"));
    }

}
