
import java.util.TimerTask; 
import java.util.Timer; 

short _count1;
short _count2;

public void setup(){
  
  _count1 = 0;
  _count2 = 0;
  
  TimerTask Period_  = new PeriodTask();
  TimerTask Period2_ = new Period2Task();
  Timer timer_       = new Timer();
  
  // TimerTask object, Timeout, Interval
  timer_.schedule(Period_, 0, 15 * 1000);
  timer_.schedule(Period2_, 0, 7 * 1000);
}

public void update(){
}

public void draw(){
}

///////////////////////////////////////////////////////////////////////////////
// Class Difinitions
///////////////////////////////////////////////////////////////////////////////
public class PeriodTask extends TimerTask{

  public PeriodTask(){
    // Nothing.
  }

  //@override
  public void run(){
    println("Thread1: " + _count1++);
    
    return;
  } 
}

public class Period2Task extends TimerTask{

  public Period2Task(){
    // Nothing.
  }

  //@override
  public void run(){
    println("Thread2: " + _count2++);
    
    return;
  } 
}