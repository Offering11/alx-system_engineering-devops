Introduction
Nowadays in the digital era, we use the internet for just about everything. We can study, connect with our friends and relatives through social media, play online games with people all over the world, listen to music and watch funny cat videos, share your presentations with your coworkers, have business meetings through video conferencing sites, etc.

Ever since the internet became available to everyone, many people have wondered exactly how we can go from the comfort of our own houses, to just about anywhere in the world with just one click. For years that has been a question, that for many, has remained a mystery. In this article, I want to take you a step further into what happens when you type any URL in your web browser and press enter.

Beginning Concepts
Before getting started, I want to first explain what a webpage is. A webpage is basically a text file formatted a certain way so that your browser (ie. Chrome, Firefox, Safari, etc) can understand it; this format is called HyperText Markup Language (HTML). These files are located in computers that provide the service of storing said files and wait for someone to need them to deliver them. They are called servers because they serve the content that they hold to whoever needs it.

These servers can vary in classes, the most common and the one that we'll be talking about in the main portion of this article is a web server, the one that serves web pages. We can also find application servers, which are the ones that hold an application base code that will then be used to interact with a web browser or other applications. Database servers are also out there, which are the ones that hold a database that can be updated and consulted when needed.

These servers in order to deliver their content, much like in physical courier services, need to have an address so that the person needing said content can make a "letter" requesting the delivery; the person requesting the content in turn also has an address where the server can deliver the content to. These addresses are called IP (Internet Protocol) Address, a set of 4 numbers that range from 0 to 255 (one byte) separated by periods (ie. 127.0.0.1).

Another concept that is important to know is that the courier service traffic for the delivery can be one of two: Transmission Control Protocol (TCP) and User Datagram Protocol (UDP). Each one determines the way the content of a server is served, or delivered.

TCP is usually used to deliver static websites such as Wikipedia or Google and also email services and to download files to your computer because TCP makes sure that all the content that is needed gets delivered. It accomplishes this by sending the file in small packets of data and along with each packet a confirmation to know that the packet was delivered; that's why if you are ever downloading something and your internet connection suddenly drops when it comes back up you don't have to start over because the server would know exactly how many packets you have and how many you still need to receive. The downside to TCP is that because it has to confirm whether you got the packet or not before sending the next, it tends to be slower.

UDP, on the other hand, is usually used to serve live videos or online games. This is because UDP is a lot faster than TCP since UDP does not check if the information was received or not; it is not important. The only thing UDP cares about is sending the information. That is the reason why if you've ever watched a live video and if either your internet connection or the host's drops, you would just stop seeing the content; and when the connection comes back up you will only see the current stream of the broadcast and what was missed is forever lost. This is also true for online videogames (if you've played them you know exactly what this means)

What actually happens...
So back to the main question of what happens when you type www.google.com or any other URL (Uniform Resource Locator) in your web browser and press Enter. So the first thing that happens is that your browser looks up in its cache to see if that website was visited before and the IP address is known. If it can't find the IP address for the URL requested then it asks your operating system to locate the web site. The first place your operating system is going to check for the address of the URL you specified is in the hosts file (/etc/hosts in Linux and Mac, c:\windows\system32\drivers\etc\hosts in Windows). If the URL is not found inside this file, then the OS will make a DNS request to find the IP Address of the web page. The first step is to ask the Resolver (or Internet Service Provider) server to look up in its cache to see if it knows the IP Address, if the Resolver does not know then it asks the root server to ask the .COM TLD (Top Level Domain) server - if your URL ends in .net then the TLD server would be .NET and so on - the TLD server will again check in its cache to see if the requested IP Address is there. If not, then it will have at least one of the authoritative name servers associated with that URL, and after going to the Name Server, it will return the IP Address associated with your URL. All this was done in a matter of milliseconds WOW!

After the OS has the IP Address and gives it to the browser, it then makes a GET (a type of HTTP Method) to said IP Address. When the request is made the browser again makes the request to the OS which then, in turn, packs the request in the TCP traffic protocol we discussed earlier, and it is sent to the IP Address. On its way, it is checked by both the OS' and the server's firewall to make sure that there are no security violations. And upon receiving the request the server (usually a load balancer that directs traffic to all available server for that website) sends a response with the IP Address of the chosen server along with the SSL (Secure Sockets Layer) certificate to initiate a secure session (HTTPS). Finally, the chosen server then sends the HTML, CSS, and Javascript files (If any) back to the OS who in turn gives it to the browser to interpret it. And then you get your website as you know it.

Conclusion
In our modern society when everything is online, it is amazing to know the complexity that takes place in order for us to be able to get to a website. Yet, it is done so fast that very few would even begin to fathom the amazing process that takes place.

I hope this brief article has given you more insight of everything that happens "under the hood" when you type www.google.com in your browser and hit Enter.

Thank you for reading!

Resources
Server (computing) https://en.wikipedia.org/wiki/Server_(computing)#Hardware_requirement

How DNS works https://howdns.works/

TCP vs UDP https://www.diffen.com/difference/TCP_vs_UDP

How to edit your hosts file https://www.howtogeek.com/howto/27350/beginner-geek-how-to-edit-your-hosts-file/


132
8 Comments
sharon doris
sharon doris
ALX AFRICA. Software Engineering Student at Alx

4w

When you type "www.google.com" in your browser and press enter, your computer sends a request to a server at Google's IP address. The server responds by sending back the HTML code for the Google search page, which your browser renders and displays on your screen.
