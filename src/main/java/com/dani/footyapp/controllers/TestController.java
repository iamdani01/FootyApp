package com.dani.footyapp.controllers;





import java.util.Iterator;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.Unirest;
import com.mashape.unirest.http.exceptions.UnirestException;
@RestController
public class TestController {
	
	
	public static void parseObject(JSONObject json, String key) {
		System.out.println(json.has(key));
		System.out.println(json.get(key));
	}
	
	public static void getKey(JSONObject json, String key) {
		boolean exists = json.has(key);
		Iterator<?> keys;
		String nextKeys;
		

		if(!exists) {
			keys= json.keys();
		
			while(keys.hasNext()) {
				nextKeys = (String)keys.next();
			;
				try {
					
					if(json.get(nextKeys) instanceof JSONObject) {
						if(exists == false) {
							getKey(json.getJSONObject(nextKeys), key);
							
						}
						
					}else if(json.get(nextKeys) instanceof JSONArray) {
						JSONArray jsonarray = json.getJSONArray(nextKeys);
						for(int i = 0;i<jsonarray.length();i++) {
							String jsonarrayString = jsonarray.get(i).toString();
							JSONObject innerJSON = new JSONObject(jsonarrayString);
							
							if(exists==false) {
								getKey(innerJSON, key);
							}
							
						}
					}
					
				}catch(Exception e){
					System.out.println("you got an error " + e );
				}
			}
			
		}else {

			parseObject(json, key);
		}
		
	}
	@GetMapping("test")
	public static void main(String[] args) {
		Unirest.setTimeouts(0, 0);
		try {
			HttpResponse<String> response = Unirest.get("https://v3.football.api-sports.io/fixtures?id=1022981")
			  .header("x-rapidapi-key", "2a7a7533b7ee5b548178c25ad9f2bcdd")
			  .header("x-rapidapi-host", "v3.football.api-sports.io")
			  .asString();
			System.out.println(response.getBody());

			String responseToString = response.getBody();


			
			getKey(new JSONObject(responseToString) , "name");
		}
			catch (UnirestException e) {
			
			e.printStackTrace();
			System.out.println("we have an error");
		}
	}
	

}
