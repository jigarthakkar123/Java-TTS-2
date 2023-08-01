import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Scanner;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

public class WeatherAPIExample {

	 private static final String API_KEY = "7442af1eea817b1388f2a7e8389cbafd";
	    private static final String API_URL = "https://api.openweathermap.org/data/2.5/weather";

	    public static void main(String[] args) {
	        String city = "London"; // Replace with the desired city or location
	        String units = "imperial"; // You can use "imperial" for Fahrenheit units

	        try {
	            String apiUrl = String.format("%s?q=%s&units=%s&appid=%s", API_URL, city, units, API_KEY);
	            URL url = new URL(apiUrl);
	            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
	            connection.setRequestMethod("GET");

	            InputStream inputStream = connection.getInputStream();
	            Scanner scanner = new Scanner(inputStream);
	            StringBuilder response = new StringBuilder();
	            while (scanner.hasNext()) {
	                response.append(scanner.nextLine());
	            }
	            scanner.close();

	            JsonObject jsonObject = new Gson().fromJson(response.toString(), JsonObject.class);
	            // Handle the JSON response to extract weather information
	            System.out.println(jsonObject);
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	    }

}
