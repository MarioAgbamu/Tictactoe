
Cell [] [] board;
int turn = 1;
int turn2 =2;
String player1="X";
String player2="O";

void setup()
{
  size(300, 300);
  board = new Cell[3][3];
  for (int i = 0; i < 3; i++)
  {
    for (int j = 0; j< 3; j++)
    {
      board[i][j] = new Cell();
    }
  }

  board[0][0].setColour(1);
  board[1][0].setColour(1);
  board[1][1].setColour(1);
  board[1][2].setColour(2);
  board[2][2].setColour(2);
  board[2][1].setColour(2);
}

void draw()
{
  background(0, 233);
  stroke(255);
  line(0, 100, 300, 100);
  line(0, 200, 300, 200);
  line(100, 0, 100, 300);
  line(200, 0, 200, 300);

  // drawing the Xs and Os

  textSize(135);
  for (int i = 0; i<3; i++)
  {
    for (int j = 0; j<3; j++)
    {
      if (board[i][j].getColour() == 1 )
      {
        text("X",i*100, j*100+100);
      } else if (board[i][j].getColour() == 2)
      {
        //text("O", i*100, j*100+100);
      }
    }
  }
}


void mousePressed()
{
if (( mouseX < 100)&& ( mouseY < 100))
  if (turn==1)
  {
    if (board[0][0].getColour() == 1 ){
      turn = 2;
    }
    //board[mouseX/100][mouseY/100].setColour(1);
  //}else if (turn == 2)
  //{
  //  board[0][0].getColour() == 2
  //  //turn = 1; 
  //  //board[mouseX/100][mouseY/100].setColour(2);
  //}
  //if (turn2==2)
  {
  board[mouseX/100][mouseY/100].setColour(2);
  }
}

}
