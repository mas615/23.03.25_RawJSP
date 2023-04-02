<%@ page import="java.security.MessageDigest" %>

<%
    String input = "abc";
    MessageDigest md = MessageDigest.getInstance("SHA-256");
    byte[] hash = md.digest(input.getBytes("UTF-8"));
    StringBuffer hexString = new StringBuffer();

    for (int i = 0; i < hash.length; i++) {
        String hex = Integer.toHexString(0xff & hash[i]);
        if (hex.length() == 1) hexString.append('0');
        hexString.append(hex);
    }

    String sha256 = hexString.toString();
    out.println("SHA-256 hash of " + input + " is: " + sha256);
%>
