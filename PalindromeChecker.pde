public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    } else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if (onlyLetters(word).equalsIgnoreCase(reverse(word))) {
    return true;
  }
  return false;
}
public String reverse(String str)
{
  String sNew = new String();
  for (int i = str.length(); i > 0; i--) {
    if (Character.isLetter(str.charAt(i - 1))) {
      sNew += str.substring(i - 1, i);
    }
  }
  return sNew;
}
public String onlyLetters(String sString) {
  String out = new String();
  for (int i = 0; i < sString.length(); i++) {
    if (Character.isLetter(sString.charAt(i))) {
      out += sString.substring(i, i + 1);
    }
  }
  return out;
}
