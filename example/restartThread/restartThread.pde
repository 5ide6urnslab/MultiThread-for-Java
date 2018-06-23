
import java.util.TimerTask; 
import java.util.Timer; 

short _count;
Timer _timer;
TimerTask _Period;

public void setup(){
  
  _count  = 0;
  _timer  = null;
  _Period = null;
  
  _Period = new PeriodTask();
  _timer  = new Timer();
  
  // TimerTask object, Timeout, Interval
  _timer.schedule(_Period, 0, 5 * 1000);
  
  return;
}

public void update(){
}

public void draw(){
  if(_count > 5){
    _count  = 0;
    
    _timer.cancel();
    _timer.purge();
    _timer = null;
    
    _Period.cancel();
    _Period = null;
    
    println("Thread Cancel");
  }
  
  if(_Period == null){
    _Period = new PeriodTask();
  }
  
  if(_timer == null){
    _timer = new Timer();

    // TimerTask object, Timeout, Interval
    _timer.schedule(_Period, 0, 5 * 1000);
  }
  
  return;
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
    _count++;
    println("Thread1: " + _count);
    
    return;
  } 
}