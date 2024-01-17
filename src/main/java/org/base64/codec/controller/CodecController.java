package org.base64.codec.controller;

import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/")
public class CodecController {
    @RequestMapping(method = RequestMethod.GET, path = "/")
    public String getDeviceDetails(/* String encodedString*/ HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
       // System.out.println(encodedString);
        return "encodedecode";
    }
    @ResponseBody
    @RequestMapping(method = RequestMethod.GET, path = "/getDecodedString")
    public String getDecodedString( String encodedString, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        String decodedValue = new String(Base64.decodeBase64(encodedString));
        return decodedValue;
    }
}
