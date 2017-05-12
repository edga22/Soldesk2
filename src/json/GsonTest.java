package json;

import java.lang.reflect.Type;
import java.util.ArrayList;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

public class GsonTest {
	private Gson gson;
	
	public GsonTest(){
		gson = new Gson();
	}
	
	public ArrayList<String> getSeats(String json){
		ArrayList<String> seats = null;
		
		Type arraylistType = new TypeToken<ArrayList<String>>(){}.getType();
		seats = gson.fromJson(json, arraylistType);
		
		return seats; 
	}
	
	public String toJson(ArrayList<String> seats){
		
		return gson.toJson(seats);
	}
}
