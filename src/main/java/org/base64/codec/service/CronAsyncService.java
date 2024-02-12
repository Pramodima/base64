
package org.base64.codec.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;


public class CronAsyncService  implements Runnable{

    public void hitHealthURL() {
        try {
            URL url = new URL("https://base64-b6xr.onrender.com/health");
            URLConnection connection = url.openConnection();
            BufferedReader bufReader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            String inputLine;
            while ((inputLine = bufReader.readLine()) != null) {
                System.out.println(inputLine);
            }
            bufReader.close();
        } catch (Exception e) {
            e.printStackTrace();

        }
    }

    @Override
    public void run() {
        while (true) {
            hitHealthURL();
            try {
                Thread.sleep(14 * 60 * 1000);
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }
    }

}

