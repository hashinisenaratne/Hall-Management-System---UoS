using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Cookie
{
	public Cookie()
	{
		
	}

    public void storeCookie(String id, String type, bool remember, HttpResponse response)
    {
        HttpCookie hmsusUser = new HttpCookie("hmsusUser");
        hmsusUser["id"] = id;
        hmsusUser["type"] = type;
        if(remember)
        {
            hmsusUser.Expires = DateTime.Now.AddYears(3);
        }
        response.Cookies.Add(hmsusUser);
    }

    public String[] getCookie(HttpRequest request)
    {
        HttpCookie hmsusUser = request.Cookies["hmsusUser"];
        String[] ret = new String[2];

        if (hmsusUser != null)
        {
            ret[0] = hmsusUser["id"];
            ret[1] = hmsusUser["type"];
        }

        return ret;
    }
}