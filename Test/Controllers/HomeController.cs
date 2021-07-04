using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Nancy.Json;
using Test.Models;

namespace Test.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }
        private void WebAPI()
        {
            var host = Dns.GetHostEntry(Dns.GetHostName());
            string myIP = host.AddressList.FirstOrDefault(ip => ip.AddressFamily == System.Net.Sockets.AddressFamily.InterNetwork).ToString();
            string strQuery;
            HttpWebRequest HttpWReq;
            HttpWebResponse HttpWResp;

            strQuery = "http://api.ipinfodb.com/v3/ip-city/?" + "ip=" + myIP + "&key=" + "8d1158e9de65578b4e44ee0da6c9710361c2e1bc7b5387327a1ea0edd3a51e80" + "&format=json";

            JavaScriptSerializer serializer = new JavaScriptSerializer();

            HttpWReq = (HttpWebRequest)WebRequest.Create(strQuery);
            HttpWReq.Method = "GET";
            HttpWResp = (HttpWebResponse)HttpWReq.GetResponse();

            System.IO.StreamReader reader = new System.IO.StreamReader(HttpWResp.GetResponseStream());
            string content = reader.ReadToEnd();

            dynamic item = serializer.Deserialize<object>(content);
            string city = item["cityName"];
            string countryc = item["countryCode"];
            string countryn = item["countryName"];
            string region = item["regionName"];
            string lat = item["latitude"];
            string longi = item["longitude"];
            string timez = item["timeZone"];
            string zip = item["zipCode"];
        }
        public IActionResult Index()
        {
            WebAPI();
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
