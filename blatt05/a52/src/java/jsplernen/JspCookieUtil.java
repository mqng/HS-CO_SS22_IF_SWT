/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jsplernen;

import javax.servlet.http.*;

/**
 *
 * @author Minh Nguyen
 */
public class JspCookieUtil {
    public void updateCookie(HttpServletResponse response, Cookie cookie) {
        response.addCookie(cookie);
    }

    public Cookie getCookieByName(HttpServletRequest request, String name) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie c : cookies) {
                if (c.getName().equals(name)) {
                    return c;
                }
            }
        }
        return null;
    }
}
