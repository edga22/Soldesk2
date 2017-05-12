package json;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public class Test {
	public String check(HttpServletRequest request){
		int mapSize = 0;
		Map<String,String[]> reqMap = request.getParameterMap();
		if(reqMap.isEmpty())return null;
		else {
			mapSize = reqMap.size();
		}
		return null;
	}
}
