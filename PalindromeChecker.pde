public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if (reverse(word).equals(format(word))) {
    return true;
  }  
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for  (int i = str.length() - 1; i >= 0; i--) {
      if (Character.isLetter(str.charAt(i))) {
        if (!str.substring(i, i + 1).equals("")) {
            sNew += str.substring(i, i + 1);
        }  
      }
    }
    //println(sNew.toLowerCase());
    return sNew.toLowerCase();
}

public String format(String str) {
    String sNew = new String();
    for (int i = 0; i < str.length(); i++) {
      if (Character.isLetter(str.charAt(i))) {
        if (!str.substring(i, i + 1).equals("")) {
            sNew += str.substring(i, i + 1);
        }  
      }
    }
    //println(sNew.toLowerCase());
    return sNew.toLowerCase();
}  
