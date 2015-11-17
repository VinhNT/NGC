package nt.ngc.com.utils;

import org.apache.commons.codec.binary.Base64;

public class Utils {
    public static String generateBase64IdFromTimeStamps() {
        Long currentTimeStamps = System.currentTimeMillis();
        byte[] encodedBytes = Base64.encodeBase64(String.valueOf(currentTimeStamps).getBytes());
        return new String(encodedBytes);
    }
}
