package Tools;

import enums.ManagementEnum;

public class URLManagementTool {
public static boolean ManagementExistTool (String url){
	ManagementEnum[] choices= ManagementEnum.values();
	for(ManagementEnum me: choices) {
		if(url.equals(me.toString())) {
			return true;
		}
	}return false;
	
}
}
