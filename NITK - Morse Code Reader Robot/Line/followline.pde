void follow_line(int lfl, int lfc, int lfr)
{
    if((lfl==0)&&(lfc==0)&&(lfr==0))
      go_straight();
    else if((lfl==1)&&(lfc==0)&&(lfr==0))
      go_left(); 
    else if((lfl==1)&&(lfc==1)&&(lfr==0))
      go_left(); 
    else if((lfl==1)&&(lfc==1)&&(lfr==1))
      stop_bot(); 
    else if((lfl==0)&&(lfc==1)&&(lfr==1))
      go_right(); 
    else if((lfl==0)&&(lfc==0)&&(lfr==1))
      go_right(); 
    else if((lfl==0)&&(lfc==1)&&(lfr==0))
      go_straight();   
}
