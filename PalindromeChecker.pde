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
  //your code here
  String word2 = onlyLetters(word);
  if (word2.equalsIgnoreCase(reverse(word2)))
  {
    return true;
  }
  else
  {
    return false;
  }
}
public String reverse(String str)
{
  String temp = new String();
  for(int i = str.length(); i > 0; i--)
  {
    temp = temp + (str.substring(i-1,i));
  }
  return temp;
}
public String onlyLetters(String sString){
  String temp = new String();
  for(int i = 0; i < sString.length(); i++)
  {
    if(Character.isLetter(sString.charAt(i))==true)
    {
      temp = temp + sString.charAt(i);
    }
  }
  return temp;
}

