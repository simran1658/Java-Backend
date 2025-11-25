package listener;
import java.io.*;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.*;


public class ActiveUserListener implements HttpSessionListener{
	public static int activeUsers=0;
	public void sessionCreated(HttpSessionEvent se) {
		activeUsers++;
	}
	public void sessionDestroyed(HttpSessionEvent se) {
		activeUsers--;
	}
	
	public static int getActiveUsers() {
		return activeUsers;
	}
}
