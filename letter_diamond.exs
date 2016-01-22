# Script to output a diamond of letters.

defmodule LetterDiamond do
  
  # Generate a mirrored list of letters, from A to the specified character
  # and back again, e.g. 'ABCDEDCBA'.
  def mirror_letters(?A), do: 'A'
  def mirror_letters(char) do
    Enum.to_list(?A..char) ++ Enum.to_list(char-1..?A)
  end
  
  # Generate a line in the diamond for the specified character, as a list
  # of characters. The number of space characters between the letters is
  # a function of the letter itself.
  def diamond_line(?A), do: 'A'
  def diamond_line(char) do
    [char] ++ padding((char - ?A) * 2 - 1) ++ [char]
  end
  
  # Print a diamond for the specified character.
  def print_diamond(char) do
    char
    |> mirror_letters
    |> Enum.each( &IO.puts padding(char - &1) ++ diamond_line(&1) )
  end
  
  # List of spaces for padding.
  def padding(n), do: List.duplicate(?\s, n)
  
  def process_arg(arg) do
    if arg =~ ~r{^[a-zA-Z]$} do
      arg
      |> String.upcase
      |> String.to_char_list
      |> hd
      |> print_diamond
    else
      IO.puts "INVALID INPUT"
    end
  end
  
  def run(argv) do
    Enum.each argv, &process_arg(&1)
  end

end

LetterDiamond.run(System.argv)
