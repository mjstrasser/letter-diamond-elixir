Code.load_file("letter_diamond.exs")

ExUnit.start

defmodule DiamondTest do
  use ExUnit.Case
  
  test "mirror_letters should return 'A' for ?A" do
    assert LetterDiamond.mirror_letters(?A) == 'A'
  end
  
  test "mirror_letters should return 'ABCDEDCBA' for ?E" do
    assert LetterDiamond.mirror_letters(?E) == 'ABCDEDCBA'
  end
  
  test "diamond_line should return 'A' for ?A" do
    assert LetterDiamond.diamond_line(?A) == 'A'
  end
  
  test "diamond_line should return 'B B' for ?B" do
    assert LetterDiamond.diamond_line(?B) == 'B B'
  end
  
  test "diamond_line should return 'H             H' for ?H" do
    assert LetterDiamond.diamond_line(?H) == 'H             H'
  end
  
end