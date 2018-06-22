
import java.util.TimerTask; 
import java.util.Timer; 

short _count;

public void setup(){
  
  _count = 0;
  
  TimerTask Period_ = new PeriodTask();
  Timer timer_      = new Timer();
  
  // TimerTask object, Timeout, Intervalß
  timer_.schedule(Period_, 0, 15 * 1000);
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
    println("Thread: " + _count++);
    
    return;
  } 
}