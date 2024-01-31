package org.base64.codec.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
@EnableAsync
@EnableScheduling
public class CronAsyncService {

@Autowired
    RestTemplate restTemplate;
    @Scheduled(cron = "0 5/15 * * * *")
    public void reloadMetaData(){
        restTemplate.getForObject("https://base64-b6xr.onrender.com/", String.class);
    }
}
