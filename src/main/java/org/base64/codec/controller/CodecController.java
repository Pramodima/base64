package org.base64.codec.controller;

import org.apache.tomcat.util.codec.binary.Base64;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/")
public class CodecController {
    private static final org.slf4j.Logger LOGGER = LoggerFactory.getLogger(CodecController.class);
    @RequestMapping(method = RequestMethod.GET, path = "/")
    public String getDeviceDetails(/* String encodedString*/ HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        return "encodedecode";
    }
    @ResponseBody
    @RequestMapping(method = RequestMethod.GET, path = "/getDecodedString")
    public String getDecodedString( String encodedString, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        String decodedValue ="";
        try {
            decodedValue = new String(Base64.decodeBase64(encodedString));

        }
        catch(Exception e){
        LOGGER.error("error "+e.getMessage());
            decodedValue="invalid input";
        }
        return decodedValue;
    }
    @RequestMapping(method = RequestMethod.GET, path = "/encode")
    public String encode( HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        return "encode";
    }
    @ResponseBody
    @RequestMapping(method = RequestMethod.GET, path = "/getEncodedString")
    public String getEncodedString( String decodedString, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        String encodedValue ="";
        try {
            encodedValue = new String(Base64.encodeBase64(decodedString.getBytes()));

        }
        catch(Exception e){
            LOGGER.error("error "+e.getMessage());
            encodedValue="invalid input";
        }
        return encodedValue;
    }
}
