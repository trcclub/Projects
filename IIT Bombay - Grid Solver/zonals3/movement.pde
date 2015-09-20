void go_straight()                                                     //Go straight function
{
    analogWrite(9,pwm_val);
    analogWrite(10,pwm_val);
    digitalWrite(11,HIGH);
    digitalWrite(12,LOW);
    digitalWrite(2,LOW);
    digitalWrite(3,HIGH); 
    if(coordinate==1) delay(250);
    if(pass==1) delay(380);
}

void go_back()
{
    analogWrite(9,pwm_val);
    analogWrite(10,pwm_val);
    digitalWrite(11,LOW);
    digitalWrite(12,HIGH);
    digitalWrite(2,HIGH);
    digitalWrite(3,LOW); 
    delay(100);
}

void go_right()                                                        //Go right function
{
    analogWrite(9,pwm_val-20);
    analogWrite(10,pwm_val-5);
    digitalWrite(11,HIGH);
    digitalWrite(12,LOW);
    digitalWrite(2,LOW);
    digitalWrite(3,HIGH);
}

void go_left()                                                         //Go left function
{
    analogWrite(9,pwm_val-5);
    analogWrite(10,pwm_val-20);
    digitalWrite(11,HIGH);
    digitalWrite(12,LOW);
    digitalWrite(2,LOW);
    digitalWrite(3,HIGH);
}

void reverse1()                                                         //Go Reverse
{
    if(straight==1) {straight=0; reverse=1;}
    else if(right==1) {right=0; left=1;}
    else if(reverse==1) {reverse=0; straight=1;}
    else if(left==1) {left=0; right=1;}  
    left12();
    delay(50);
    go_back();
    left12();
}

void sharp_right()                                                     //Sharp right function
{
    if(straight==1) {straight=0; right=1;}
    else if(right==1) {right=0; reverse=1;}
    else if(reverse==1) {reverse=0; left=1;}
    else if(left==1) {left=0; straight=1;}  
    
    delay(100);
    
    while(digitalRead(A1)!=1)
    {
    analogWrite(9,0);
    analogWrite(10,pwm_val-10);
    digitalWrite(11,HIGH);
    digitalWrite(12,LOW);
    digitalWrite(2,LOW);
    digitalWrite(3,HIGH);
    }
    
    while(digitalRead(A1)!=0)
      {
        analogWrite(9,pwm_val-8);
        analogWrite(10,pwm_val-8);
        digitalWrite(11,HIGH);
        digitalWrite(12,LOW);
        digitalWrite(2,HIGH);
        digitalWrite(3,LOW);
      }
  while(digitalRead(A1)!=1)
    {
        analogWrite(9,pwm_val-20);
        analogWrite(10,pwm_val-20);
        digitalWrite(11,HIGH);
        digitalWrite(12,LOW);
        digitalWrite(2,HIGH);
        digitalWrite(3,LOW);
    }
   while(digitalRead(A0)!=0)
    {
        analogWrite(9,pwm_val-15);
        analogWrite(10,pwm_val-15);
        digitalWrite(11,LOW);
        digitalWrite(12,HIGH);
        digitalWrite(2,LOW);
        digitalWrite(3,HIGH);
    }
    while(digitalRead(A1)!=1)
    {
        analogWrite(9,pwm_val-15);
        analogWrite(10,pwm_val-15);
        digitalWrite(11,HIGH);
        digitalWrite(12,LOW);
        digitalWrite(2,HIGH);
        digitalWrite(3,LOW);
    }
}

void sharp_left()                                                       //Sharp left function
{
    if(straight==1) {straight=0; left=1;}
    else if(left==1) {left=0; reverse=1;}
    else if(reverse==1) {reverse=0; right=1;}
    else if(right==1) {right=0; straight=1;}    
    
    delay(100);
    while(digitalRead(A0)!=1)
    {
    analogWrite(9,pwm_val-10);
    analogWrite(10,0);
    digitalWrite(11,HIGH);
    digitalWrite(12,LOW);
    digitalWrite(2,LOW);
    digitalWrite(3,HIGH);
    }
    
    while(digitalRead(A0)!=0)
    {
        analogWrite(9,pwm_val-8);
        analogWrite(10,pwm_val-8);
        digitalWrite(11,LOW);
        digitalWrite(12,HIGH);
        digitalWrite(2,LOW);
        digitalWrite(3,HIGH);
    }
    while(digitalRead(A0)!=1)
    {
        analogWrite(9,pwm_val-20);
        analogWrite(10,pwm_val-20);
        digitalWrite(11,LOW);
        digitalWrite(12,HIGH);
        digitalWrite(2,LOW);
        digitalWrite(3,HIGH);
    }
    
    while(digitalRead(A1)!=0)
    {
        analogWrite(9,pwm_val-15);
        analogWrite(10,pwm_val-15);
        digitalWrite(11,HIGH);
        digitalWrite(12,LOW);
        digitalWrite(2,HIGH);
        digitalWrite(3,LOW);
    }
    
    while(digitalRead(A0)!=1)
    {
        analogWrite(9,pwm_val-15);
        analogWrite(10,pwm_val-15);
        digitalWrite(11,LOW);
        digitalWrite(12,HIGH);
        digitalWrite(2,LOW);
        digitalWrite(3,HIGH);
    }

}

void left1()                                                         //Go left function
{
    if(straight==1) {straight=0; left=1;}
    else if(left==1) {left=0; reverse=1;}
    else if(reverse==1) {reverse=0; right=1;}
    else if(right==1) {right=0; straight=1;}    
    
    analogWrite(9,pwm_val-10);
    analogWrite(10,pwm_val-10);
    digitalWrite(11,LOW);
    digitalWrite(12,HIGH);
    digitalWrite(2,HIGH);
    digitalWrite(3,LOW); 
    delay(100);  
    
    while(digitalRead(A0)!=1)
    {
    analogWrite(9,pwm_val-10);
    analogWrite(10,0);
    digitalWrite(11,HIGH);
    digitalWrite(12,LOW);
    digitalWrite(2,LOW);
    digitalWrite(3,HIGH);
    }
    
    while(digitalRead(A0)!=0)
    {
        analogWrite(9,pwm_val-8);
        analogWrite(10,pwm_val-8);
        digitalWrite(11,LOW);
        digitalWrite(12,HIGH);
        digitalWrite(2,LOW);
        digitalWrite(3,HIGH);
    }
    while(digitalRead(A0)!=1)
    {
        analogWrite(9,pwm_val-20);
        analogWrite(10,pwm_val-20);
        digitalWrite(11,LOW);
        digitalWrite(12,HIGH);
        digitalWrite(2,LOW);
        digitalWrite(3,HIGH);
    }
    
    while(digitalRead(A1)!=0)
    {
        analogWrite(9,pwm_val-15);
        analogWrite(10,pwm_val-15);
        digitalWrite(11,HIGH);
        digitalWrite(12,LOW);
        digitalWrite(2,HIGH);
        digitalWrite(3,LOW);
    }
    
}

void right1()                                                         //Go right function
{
    if(straight==1) {straight=0; right=1;}
    else if(right==1) {right=0; reverse=1;}
    else if(reverse==1) {reverse=0; left=1;}
    else if(left==1) {left=0; straight=1;}  
    
    analogWrite(9,pwm_val-10);
    analogWrite(10,pwm_val-10);
    digitalWrite(11,LOW);
    digitalWrite(12,HIGH);
    digitalWrite(2,HIGH);
    digitalWrite(3,LOW); 
    delay(100);  
    
    while(digitalRead(A1)!=1)
    {
    analogWrite(9,0);
    analogWrite(10,pwm_val-10);
    digitalWrite(11,HIGH);
    digitalWrite(12,LOW);
    digitalWrite(2,LOW);
    digitalWrite(3,HIGH);
    }
    
    while(digitalRead(A1)!=0)
      {
        analogWrite(9,pwm_val-8);
        analogWrite(10,pwm_val-8);
        digitalWrite(11,HIGH);
        digitalWrite(12,LOW);
        digitalWrite(2,HIGH);
        digitalWrite(3,LOW);
      }
  while(digitalRead(A1)!=1)
    {
        analogWrite(9,pwm_val-20);
        analogWrite(10,pwm_val-20);
        digitalWrite(11,HIGH);
        digitalWrite(12,LOW);
        digitalWrite(2,HIGH);
        digitalWrite(3,LOW);
    }
   while(digitalRead(A0)!=0)
    {
        analogWrite(9,pwm_val-15);
        analogWrite(10,pwm_val-15);
        digitalWrite(11,LOW);
        digitalWrite(12,HIGH);
        digitalWrite(2,LOW);
        digitalWrite(3,HIGH);
    }
}

void left12()                                                         //Go left function
{
    analogWrite(9,pwm_val-10);
    analogWrite(10,pwm_val-10);
    digitalWrite(11,LOW);
    digitalWrite(12,HIGH);
    digitalWrite(2,HIGH);
    digitalWrite(3,LOW); 
    delay(100);  
    
    while(digitalRead(A0)!=1)
    {
    analogWrite(9,pwm_val-10);
    analogWrite(10,0);
    digitalWrite(11,HIGH);
    digitalWrite(12,LOW);
    digitalWrite(2,LOW);
    digitalWrite(3,HIGH);
    }
    
    while(digitalRead(A0)!=0)
    {
        analogWrite(9,pwm_val-8);
        analogWrite(10,pwm_val-8);
        digitalWrite(11,LOW);
        digitalWrite(12,HIGH);
        digitalWrite(2,LOW);
        digitalWrite(3,HIGH);
    }
    while(digitalRead(A0)!=1)
    {
        analogWrite(9,pwm_val-20);
        analogWrite(10,pwm_val-20);
        digitalWrite(11,LOW);
        digitalWrite(12,HIGH);
        digitalWrite(2,LOW);
        digitalWrite(3,HIGH);
    }
    
    while(digitalRead(A1)!=0)
    {
        analogWrite(9,pwm_val-15);
        analogWrite(10,pwm_val-15);
        digitalWrite(11,HIGH);
        digitalWrite(12,LOW);
        digitalWrite(2,HIGH);
        digitalWrite(3,LOW);
    }
    
}


void stop_bot()                                                         //Stop bot function
{
    analogWrite(9,0);
    analogWrite(10,0);
    digitalWrite(11,LOW);
    digitalWrite(12,LOW);
    digitalWrite(2,LOW);
    digitalWrite(3,LOW); 
    if(coordinate==1) delay(1000);    
}

