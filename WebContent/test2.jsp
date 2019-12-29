
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page language="java" import="java.util.*" %>>
<%@page import="Controll.Logic"%>
<%ResultSet resultset =null;%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
    <!-- Required meta tags - Bootstrap START-->
    <meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Bootstrap END-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta property="og:site_name" content="Shayari Ki Dhuniya - Collection of Shayari" />
	<meta name="Keywords" content="Hindi Shayari, Urdu Shayari, Romantic Shayari, Love Shayari, Sad Shayari, Dard Shayari" />
    <!-- Latest compiled and minified JavaScript -->    
    <link href="bundles/css_bundle3b0e.css" rel="stylesheet"/>
<title>
	Shayari Ki Dhuniya - Shayari for every emotion
</title>
</head>
<body data-role="page">
    <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "../connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=154562311800147";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

    <form method="post" action="index.jsp" id="form1">
<div class="aspNetHidden">
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTE1Mjk0NTQ5NQ9kFgJmD2QWAgIBD2QWBgILD2QWAgIBD2QWAgIGDzwrAAkBAA8WBB4IRGF0YUtleXMWAB4LXyFJdGVtQ291bnRmZGQCDw9kFgICAQ8WAh8BAgoWFGYPZBYEAgMPDxYEHgRUZXh0BQxJc2hxIFNoYXlhcmkeC05hdmlnYXRlVXJsBRd+L0NhdGVnb3J5L0lzaHFfU2hheWFyaWRkAgUPDxYCHwIFDDI1NCBzaGF5YXJpc2RkAgEPZBYEAgMPDxYEHwIFDVB5YWFyIFNoYXlhcmkfAwUYfi9DYXRlZ29yeS9QeWFhcl9TaGF5YXJpZGQCBQ8PFgIfAgUMMjAyIHNoYXlhcmlzZGQCAg9kFgQCAw8PFgQfAgUMRGFyZCBTaGF5YXJpHwMFF34vQ2F0ZWdvcnkvRGFyZF9TaGF5YXJpZGQCBQ8PFgIfAgUMMTk4IHNoYXlhcmlzZGQCAw9kFgQCAw8PFgQfAgULU2FkIFNoYXlhcmkfAwUWfi9DYXRlZ29yeS9zYWRfc2hheWFyaWRkAgUPDxYCHwIFDDE5NyBzaGF5YXJpc2RkAgQPZBYEAgMPDxYEHwIFDExvdmUgU2hheWFyaR8DBRd+L0NhdGVnb3J5L2xvdmVfc2hheWFyaWRkAgUPDxYCHwIFDDE5MiBzaGF5YXJpc2RkAgUPZBYEAgMPDxYEHwIFDFByZW0gU2hheWFyaR8DBRd+L0NhdGVnb3J5L1ByZW1fU2hheWFyaWRkAgUPDxYCHwIFDDE4NiBzaGF5YXJpc2RkAgYPZBYEAgMPDxYEHwIFIuCkh+CkguCkpOClm+CkvuCksCDgpLbgpL7gpK/gpLDgpYAfAwUhfi9DYXRlZ29yeS9JbnRlemFhcl9TaGF5YXJpX0hpbmRpZGQCBQ8PFgIfAgUMMTcyIHNoYXlhcmlzZGQCBw9kFgQCAw8PFgQfAgUKRGFyZC1lLURpbB8DBRV+L0NhdGVnb3J5L0RhcmQtZS1EaWxkZAIFDw8WAh8CBQwxNzAgc2hheWFyaXNkZAIID2QWBAIDDw8WBB8CBR3gpKbgpL/gpLIg4KSV4KWHIOCkleCksOClgOCkrB8DBSV+L0NhdGVnb3J5L0RpbF9LZV9LYXJpYl9TaGF5YXJpX0hpbmRpZGQCBQ8PFgIfAgUMMTYyIHNoYXlhcmlzZGQCCQ9kFgQCAw8PFgQfAgUQTW9oYWJiYXQgU2hheWFyaR8DBRt+L0NhdGVnb3J5L01vaGFiYmF0X1NoYXlhcmlkZAIFDw8WAh8CBQwxNjEgc2hheWFyaXNkZAIXD2QWAgIBDxYCHwECBRYKZg9kFgQCAw8PFgQfAgUZQWpuYWJpIGdhbGl5b24gc2UgaHVtIGcuLh8DBSp+L0NvbnRlbnQvMTQ2My9Bam5hYmlfZ2FsaXlvbl9zZV9odW1fZ3V6cmFkZAIFDw8WAh8CBQxJc2hxIFNoYXlhcmlkZAIBD2QWBAIDDw8WBB8CBRlDaGFuZCBUYWFyZSBUb2ggTmEgTGEgUy4uHwMFLH4vQ29udGVudC8xOTczL0NoYW5kX1RhYXJlX1RvaF9OYV9MYV9TYWt1bmdhZGQCBQ8PFgIfAgUMR2hhbSBTaGF5YXJpZGQCAg9kFgQCAw8PFgQfAgUYRGlsIEsgUWFyZWViIEFhIEsgSmFiIFdvHwMFJ34vQ29udGVudC8yMDQ2L0RpbF9LX1FhcmVlYl9BYV9LX0phYl9Xb2RkAgUPDxYCHwIFDkJld2FmYSBTaGF5YXJpZGQCAw9kFgQCAw8PFgQfAgUZTWVyaSBDaGFoYXQgbmUgVXNlIEtodXNoaR8DBSh+L0NvbnRlbnQvMTU4NC9NZXJpX0NoYWhhdF9uZV9Vc2VfS2h1c2hpZGQCBQ8PFgIfAgUNUHlhYXIgU2hheWFyaWRkAgQPZBYEAgMPDxYEHwIFGVVuaGUgTmFmcmF0IEh1eWkgU2FhcmUgLi4fAwUrfi9Db250ZW50LzEyNjkvVW5oZV9OYWZyYXRfSHV5aV9TYWFyZV9KYWhhbmRkAgUPDxYCHwIFC0R1YSBTaGF5YXJpZGRksQb1z4pWKV9MG5zYxYDUBSAZqk/5YMrj/0JQxO7Mkk4=" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="WebResource5690.js" type="text/javascript"></script>


<script src="ScriptResourcede5b.js" type="text/javascript"></script>
<script src="ScriptResource588b.js" type="text/javascript"></script>
<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="90059987" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION"/>
</div>
                
        <div id="IdBgImage">
        </div>
         
        <div id="Div1" data-role="header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                    
                        <!--Header starts -->                    

                        <nav class="navbar navbar-expand-lg navbar-light bg-light">
                            <a href="index-2.html" class="navbar-brand"><img src="Images/logo.png" /></a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                                <ul class="navbar-nav">
                                    <li class="nav-item active lnk1">
                                        <a href="index-2.html" class="nav-link" title="Home">Home <span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="nav-item lnk2">
                                        <a class="nav-link" href="contact_us.html" title="Contact us">Contact us</a>
                                    </li>
                                    <li class="nav-item lnk3">
                                        <a class="nav-link" href="Submit_content.html" title="Contact me">Submit new Shayari</a>
                                    </li>
                                    <li class="nav-item dropdown lnk4">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" name="category">
                                            Categories
                                        </a>
                                        
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                             <%
                                        
		                                        ArrayList list = new ArrayList();
		                                        ArrayList sublist = new ArrayList();
												try{
											    	Connection con=Logic.conn();
											    	//Statement st = con.createStatement() ;
											      //  resultset =st.executeQuery("select * from sayraikidhuniyatable") ;
												
											%>
											<ul>
												 <%
								                    String query1 = "select * from sayraikidhuniyatable";
								                    Statement st1 = con.createStatement();
								                    ResultSet rs1 = st1.executeQuery(query1);
								                    
								                    while (rs1.next()) {
                        

                %>
											</ul>
                                                    <a id="repCategoryList_Nav_hplCategory_0" class="dropdown-item" href="#">  <%= rs1.getString(2)%></a>
                                                
                                                    
                                            <hr role="separator" class="divider"/>


                                        </div>
                                       
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                            <a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <select  onchange="this.form.submit();">
												         <option >---None---</option>
												        <%  
												        	while(resultset.next()){
												        	String rs=resultset.getString(2).toLowerCase();
												        %>
												          <option value="<%=rs%>"><%=rs%></option>
												      
        											</select>
													</a>
													<%
													        }
								                    }
												}
													        catch(Exception e)
													        {
													             out.println("wrong entry"+e);
													        }
													%>
										 </div>
                                    </li>
                                </ul>
                            </div>
                        </nav>

                        <!--Header ends -->

                    </div>
                </div>
            </div>
        </div>
        
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    
                    
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 col-md-9">
                    
    
        <div class="title">
            <span>15 Random Shayari</span>
        </div>
            

<%
if(request.getParameter("category")!=null)  {
    try {
    	System.out.println(request.getParameter("category"));
    	Connection con=Logic.conn();
      	 Statement statement = con.createStatement() ;
      	 resultset =statement.executeQuery("select * from " +request.getParameter("category"));	
 		 while(resultset.next()){
	  // "insert into "+ category +" (sayari) values(?);"
%>
        <div class="card rounded mb-4">
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <h5 class="card-title"><a id="cphMain_ccContent_repContentList_hplTitle_0" href="Content/8530/%e0%a4%85%e0%a4%aa%e0%a4%a8%e0%a5%87_%e0%a4%a6%e0%a4%bf%e0%a4%b2_%e0%a4%95%e0%a5%80_%e0%a4%9c%e0%a4%bc%e0%a4%ae%e0%a5%80_%e0%a4%aa%e0%a5%87_%e0%a4%a4%e0%a4%b2%e0%a4%be%e0%a4%b6.html">अपने दिल की ज़मी पे तलाश</a></h5>
                        <h6 class="card-subtitle mb-2 text-muted">Category : <span id="cphMain_ccContent_repContentList_lblCategory_0">दिल के करीब</span></h6>

                    </div>
                <!--    <div class="col">
                        <div class="float-right highlighted-info">
                            <a id="cphMain_ccContent_repContentList_hypDownloadApp_0" href="../external.html?link=https://y6s46.app.goo.gl/kPAc" target="_blank"><img src="Images/icons/Android_App_Download.png" alt="Download Android App" />Download App
                            </a>
                        </div>
                    </div>-->
                </div>
                
                
                <p class="card-text my-5"><span id="cphMain_ccContent_repContentList_lblContent_0"><!-- अपने दिल की ज़मी पे तलाश कर मुझे,अगर वहा नही तो कही नही मैं,मोहब्बत हूॅ तेरे अहसासो मे,नही तो फिर कही भी नही हूॅ मैं..--></span></p>
              
               
                <div>
                    <div class='addthis_toolbox addthis_default_style addthis_32x32_style'>
            
            </div>
                </div>
            </div>
        </div>
    

        <div class="card rounded mb-4">
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <h5 class="card-title"><a id="cphMain_ccContent_repContentList_hplTitle_1" href="Content/11077/%e0%a4%b8%e0%a4%bf%e0%a4%b0%e0%a5%8d%e0%a4%ab_%e0%a4%87%e0%a4%b6%e0%a4%be%e0%a4%b0%e0%a5%8b%e0%a4%82_%e0%a4%ae%e0%a5%87%e0%a4%82_%e0%a4%b9%e0%a5%8b%e0%a4%a4%e0%a5%80_%e0%a4%ae%e0%a4%b9%e0%a5%8b%e0%a4%ac%e0%a5%8d%e0%a4%ac%e0%a4%a4_4.html">सिर्फ इशारों में होती महोब्बत</a></h5>
                        <h6 class="card-subtitle mb-2 text-muted">Category : <span id="cphMain_ccContent_repContentList_lblCategory_1">प्यार शायरी</span></h6>

                    </div>
                    <!--<div class="col">
                        <div class="float-right highlighted-info">
                            <a id="cphMain_ccContent_repContentList_hypDownloadApp_1" href="../external.html?link=https://y6s46.app.goo.gl/kPAc" target="_blank"><img src="Images/icons/Android_App_Download.png" alt="Download Android App" />Download App
                            </a>
                        </div>
                    </div>-->
                </div>
                
                
                <p class="card-text my-5"><span id="cphMain_ccContent_repContentList_lblContent_1"><%=resultset.getString("Sayari")%><!-- सिर्फ इशारों में होती महोब्बत अगर,इन अलफाजों को खुबसूरती कौन देता,बस पत्थर बन के रह जाता ‘ताज महल’अगर इश्क इसे अपनी पहचान ना देता..--></span></p>
                <div>
                    <div class='addthis_toolbox addthis_default_style addthis_32x32_style'>
                </div>
                </div>
            </div>
        </div>
    <%

   }
    }
 
 catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
}
%>

        <div class="card rounded mb-4">
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <h5 class="card-title"><a id="cphMain_ccContent_repContentList_hplTitle_2" href="Content/1148/Koi_achha_lage_to_usse_pyar.html">Koi achha lage to usse pyar</a></h5>
                        <h6 class="card-subtitle mb-2 text-muted">Category : <span id="cphMain_ccContent_repContentList_lblCategory_2">Bewafa Shayari</span></h6>

                    </div>
                 <!--   <div class="col">
                        <div class="float-right highlighted-info">
                            <a id="cphMain_ccContent_repContentList_hypDownloadApp_2" href="../external.html?link=https://y6s46.app.goo.gl/7wZM" target="_blank"><img src="Images/icons/Android_App_Download.png" alt="Download Android App" />Download App
                            </a>
                        </div>
                    </div>-->
                </div>
                
                
                <p class="card-text my-5"><span id="cphMain_ccContent_repContentList_lblContent_2">Koi achha lage to usse pyar mat karna, <br/>Uske liye neendein bekaar mat karna, <br/><br/>Do din to aayenge khushi se milne, <br/>Teesre din kahenge mera intezar mat karna..</span></p>
                <div>
                    <div class='addthis_toolbox addthis_default_style addthis_32x32_style'>
              <a class='addthis_button_facebook'
                    addthis:url='http://www.shayariguru.in/Content/1148/Koi achha lage to usse pyar'
                    addthis:title='Koi achha lage to usse pyar'   
                    addthis:description = 'Koi achha lage to usse pyar mat karna, <br/>Uske liye neendein bekaar mat karna, <br/><br/>Do din to aayenge khushi se milne, <br/>Teesre din kahenge mera intezar mat karna..'></a>
              <a class='addthis_button_twitter'
                    addthis:url='http://www.shayariguru.in/Content/1148/Koi achha lage to usse pyar'
                    addthis:title='Koi achha lage to usse pyar'   
                    addthis:description = 'Koi achha lage to usse pyar mat karna, <br/>Uske liye neendein bekaar mat karna, <br/><br/>Do din to aayenge khushi se milne, <br/>Teesre din kahenge mera intezar mat karna..'></a>
              <a class='addthis_button_email'
                    addthis:url='http://www.shayariguru.in/Content/1148/Koi achha lage to usse pyar'
                    addthis:title='Koi achha lage to usse pyar'   
                    addthis:description = 'Koi achha lage to usse pyar mat karna, <br/>Uske liye neendein bekaar mat karna, <br/><br/>Do din to aayenge khushi se milne, <br/>Teesre din kahenge mera intezar mat karna..'></a>
               <a class='addthis_button_whatsapp'
                    addthis:url='http://www.shayariguru.in/Content/1148/Koi achha lage to usse pyar'
                    addthis:title='Koi achha lage to usse pyar'   
                    addthis:description = 'Koi achha lage to usse pyar mat karna, <br/>Uske liye neendein bekaar mat karna, <br/><br/>Do din to aayenge khushi se milne, <br/>Teesre din kahenge mera intezar mat karna..'></a>
              <a class='addthis_button_compact'
                    addthis:url='http://www.shayariguru.in/Content/1148/Koi achha lage to usse pyar'
                    addthis:title='Koi achha lage to usse pyar'   
                    addthis:description = 'Koi achha lage to usse pyar mat karna, <br/>Uske liye neendein bekaar mat karna, <br/><br/>Do din to aayenge khushi se milne, <br/>Teesre din kahenge mera intezar mat karna..'></a>
            </div>
                </div>
            </div>
        </div>
    

        <div class="card rounded mb-4">
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <h5 class="card-title"><a id="cphMain_ccContent_repContentList_hplTitle_3" href="Content/1111/Khwab_Rehteh_The_Jo_Kabhi.html">Khwab Rehteh The Jo Kabhi</a></h5>
                        <h6 class="card-subtitle mb-2 text-muted">Category : <span id="cphMain_ccContent_repContentList_lblCategory_3">Khwab Shayari</span></h6>

                    </div>
                <!--    <div class="col">
                        <div class="float-right highlighted-info">
                            <a id="cphMain_ccContent_repContentList_hypDownloadApp_3" href="../external.html?link=https://y6s46.app.goo.gl/YM0b" target="_blank"><img src="Images/icons/Android_App_Download.png" alt="Download Android App" />Download App
                            </a>
                        </div>
                    </div>-->
                </div>
                
                
                <p class="card-text my-5"><span id="cphMain_ccContent_repContentList_lblContent_3">Khwab Rehteh The Jo Kabhi Palkon Pe,<br/> Moti Bankar Aankhon Se Gir Gaye,<br/><br/>Daav Par Hote Hain Dil O Jaan Yaha,<br/> Pyar Ka Yeh Saude Mehenge Pad Gaye,<br/><br/>Dhundhle Raaste, Manzil Bhi Anjaani Si,<br/> Rukte Kadam Phir Aage Badh Gaye,<br/><br></span></p>
                <div>
                    <div class='addthis_toolbox addthis_default_style addthis_32x32_style'>
              <a class='addthis_button_facebook'
                    addthis:url='http://www.shayariguru.in/Content/1111/Khwab Rehteh The Jo Kabhi'
                    addthis:title='Khwab Rehteh The Jo Kabhi'   
                    addthis:description = 'Khwab Rehteh The Jo Kabhi Palkon Pe,<br/> Moti Bankar Aankhon Se Gir Gaye,<br/><br/>Daav Par Hote Hain Dil O Jaan Yaha,<br/> Pyar Ka Yeh Saude Mehenge Pad Gaye,<br/><br/>Dhundhle Raaste, Manzil Bhi Anjaani Si,<br/> Rukte Kadam Phir Aage Badh Gaye,<br/><br'></a>
              <a class='addthis_button_twitter'
                    addthis:url='http://www.shayariguru.in/Content/1111/Khwab Rehteh The Jo Kabhi'
                    addthis:title='Khwab Rehteh The Jo Kabhi'   
                    addthis:description = 'Khwab Rehteh The Jo Kabhi Palkon Pe,<br/> Moti Bankar Aankhon Se Gir Gaye,<br/><br/>Daav Par Hote Hain Dil O Jaan Yaha,<br/> Pyar Ka Yeh Saude Mehenge Pad Gaye,<br/><br/>Dhundhle Raaste, Manzil Bhi Anjaani Si,<br/> Rukte Kadam Phir Aage Badh Gaye,<br/><br'></a>
              <a class='addthis_button_email'
                    addthis:url='http://www.shayariguru.in/Content/1111/Khwab Rehteh The Jo Kabhi'
                    addthis:title='Khwab Rehteh The Jo Kabhi'   
                    addthis:description = 'Khwab Rehteh The Jo Kabhi Palkon Pe,<br/> Moti Bankar Aankhon Se Gir Gaye,<br/><br/>Daav Par Hote Hain Dil O Jaan Yaha,<br/> Pyar Ka Yeh Saude Mehenge Pad Gaye,<br/><br/>Dhundhle Raaste, Manzil Bhi Anjaani Si,<br/> Rukte Kadam Phir Aage Badh Gaye,<br/><br'></a>
               <a class='addthis_button_whatsapp'
                    addthis:url='http://www.shayariguru.in/Content/1111/Khwab Rehteh The Jo Kabhi'
                    addthis:title='Khwab Rehteh The Jo Kabhi'   
                    addthis:description = 'Khwab Rehteh The Jo Kabhi Palkon Pe,<br/> Moti Bankar Aankhon Se Gir Gaye,<br/><br/>Daav Par Hote Hain Dil O Jaan Yaha,<br/> Pyar Ka Yeh Saude Mehenge Pad Gaye,<br/><br/>Dhundhle Raaste, Manzil Bhi Anjaani Si,<br/> Rukte Kadam Phir Aage Badh Gaye,<br/><br'></a>
              <a class='addthis_button_compact'
                    addthis:url='http://www.shayariguru.in/Content/1111/Khwab Rehteh The Jo Kabhi'
                    addthis:title='Khwab Rehteh The Jo Kabhi'   
                    addthis:description = 'Khwab Rehteh The Jo Kabhi Palkon Pe,<br/> Moti Bankar Aankhon Se Gir Gaye,<br/><br/>Daav Par Hote Hain Dil O Jaan Yaha,<br/> Pyar Ka Yeh Saude Mehenge Pad Gaye,<br/><br/>Dhundhle Raaste, Manzil Bhi Anjaani Si,<br/> Rukte Kadam Phir Aage Badh Gaye,<br/><br'></a>
            </div>
                </div>
            </div>
        </div>
    

        <div class="card rounded mb-4">
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <h5 class="card-title"><a id="cphMain_ccContent_repContentList_hplTitle_4" href="Content/11242/%e0%a4%b9%e0%a4%b0_%e0%a4%b8%e0%a4%be%e0%a4%81%e0%a4%b8_%e0%a4%ae%e0%a5%87%e0%a4%82_%e0%a4%89%e0%a4%a8%e0%a4%95%e0%a5%80_%e0%a4%af%e0%a4%be%e0%a4%a6_%e0%a4%b9%e0%a5%8b%e0%a4%a4%e0%a5%80_2.html">हर साँस में उनकी याद होती</a></h5>
                        <h6 class="card-subtitle mb-2 text-muted">Category : <span id="cphMain_ccContent_repContentList_lblCategory_4">लव शायरी</span></h6>

                    </div>
                <!--    <div class="col">
                        <div class="float-right highlighted-info">
                            <a id="cphMain_ccContent_repContentList_hypDownloadApp_4" href="../external.html?link=https://y6s46.app.goo.gl/0xZE" target="_blank"><img src="Images/icons/Android_App_Download.png" alt="Download Android App" />Download App
                            </a>
                        </div>
                    </div>-->
                </div>
                
                
                <p class="card-text my-5"><span id="cphMain_ccContent_repContentList_lblContent_4">हर साँस में उनकी याद होती है,<br/>मेरी आंखों को उनकी तलाश होती है,<br/>कितनी खूबसूरत है चीज ये मोहब्बत,<br/>कि दिल धड़कने में भी उनकी आवाज होती है।</span></p>
                <div>
                    <div class='addthis_toolbox addthis_default_style addthis_32x32_style'>
              <a class='addthis_button_facebook'
                    addthis:url='http://www.shayariguru.in/Content/11242/हर साँस में उनकी याद होती'
                    addthis:title='हर साँस में उनकी याद होती'   
                    addthis:description = 'हर साँस में उनकी याद होती है,<br/>मेरी आंखों को उनकी तलाश होती है,<br/>कितनी खूबसूरत है चीज ये मोहब्बत,<br/>कि दिल धड़कने में भी उनकी आवाज होती है।'></a>
              <a class='addthis_button_twitter'
                    addthis:url='http://www.shayariguru.in/Content/11242/हर साँस में उनकी याद होती'
                    addthis:title='हर साँस में उनकी याद होती'   
                    addthis:description = 'हर साँस में उनकी याद होती है,<br/>मेरी आंखों को उनकी तलाश होती है,<br/>कितनी खूबसूरत है चीज ये मोहब्बत,<br/>कि दिल धड़कने में भी उनकी आवाज होती है।'></a>
              <a class='addthis_button_email'
                    addthis:url='http://www.shayariguru.in/Content/11242/हर साँस में उनकी याद होती'
                    addthis:title='हर साँस में उनकी याद होती'   
                    addthis:description = 'हर साँस में उनकी याद होती है,<br/>मेरी आंखों को उनकी तलाश होती है,<br/>कितनी खूबसूरत है चीज ये मोहब्बत,<br/>कि दिल धड़कने में भी उनकी आवाज होती है।'></a>
               <a class='addthis_button_whatsapp'
                    addthis:url='http://www.shayariguru.in/Content/11242/हर साँस में उनकी याद होती'
                    addthis:title='हर साँस में उनकी याद होती'   
                    addthis:description = 'हर साँस में उनकी याद होती है,<br/>मेरी आंखों को उनकी तलाश होती है,<br/>कितनी खूबसूरत है चीज ये मोहब्बत,<br/>कि दिल धड़कने में भी उनकी आवाज होती है।'></a>
              <a class='addthis_button_compact'
                    addthis:url='http://www.shayariguru.in/Content/11242/हर साँस में उनकी याद होती'
                    addthis:title='हर साँस में उनकी याद होती'   
                    addthis:description = 'हर साँस में उनकी याद होती है,<br/>मेरी आंखों को उनकी तलाश होती है,<br/>कितनी खूबसूरत है चीज ये मोहब्बत,<br/>कि दिल धड़कने में भी उनकी आवाज होती है।'></a>
            </div>
                </div>
            </div>
        </div>
    

        <div class="card rounded mb-4">
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <h5 class="card-title"><a id="cphMain_ccContent_repContentList_hplTitle_5" href="Content/10631/%e0%a4%ae%e0%a5%81%e0%a4%b9%e0%a4%ac%e0%a5%8d%e0%a4%ac%e0%a4%a4_%e0%a4%95%e0%a4%be_%e0%a4%87%e0%a4%ae%e0%a5%8d%e0%a4%a4%e0%a4%bf%e0%a4%b9%e0%a4%be%e0%a4%a8_%e0%a4%86%e0%a4%b8%e0%a4%be%e0%a4%a8_2.html">मुहब्बत का इम्तिहान आसान</a></h5>
                        <h6 class="card-subtitle mb-2 text-muted">Category : <span id="cphMain_ccContent_repContentList_lblCategory_5">इंतज़ार शायरी</span></h6>

                    </div>
                  <!--  <div class="col">
                        <div class="float-right highlighted-info">
                            <a id="cphMain_ccContent_repContentList_hypDownloadApp_5" href="../external.html?link=https://y6s46.app.goo.gl/2bnk" target="_blank"><img src="Images/icons/Android_App_Download.png" alt="Download Android App" />Download App
                            </a>
                        </div>
                    </div>-->
                </div>
                
                
                <p class="card-text my-5"><span id="cphMain_ccContent_repContentList_lblContent_5">मुहब्बत का इम्तिहान आसान नहीं!प्यार सिर्फ पाने का नाम नहीं!मुद्दतें बीत जाती हैं किसी के इंतज़ार में!ये सिर्फ पल-दो-पल का काम नहीं!</span></p>
                <div>
                    <div class='addthis_toolbox addthis_default_style addthis_32x32_style'>
              <a class='addthis_button_facebook'
                    addthis:url='http://www.shayariguru.in/Content/10631/मुहब्बत का इम्तिहान आसान'
                    addthis:title='मुहब्बत का इम्तिहान आसान'   
                    addthis:description = 'मुहब्बत का इम्तिहान आसान नहीं!प्यार सिर्फ पाने का नाम नहीं!मुद्दतें बीत जाती हैं किसी के इंतज़ार में!ये सिर्फ पल-दो-पल का काम नहीं!'></a>
              <a class='addthis_button_twitter'
                    addthis:url='http://www.shayariguru.in/Content/10631/मुहब्बत का इम्तिहान आसान'
                    addthis:title='मुहब्बत का इम्तिहान आसान'   
                    addthis:description = 'मुहब्बत का इम्तिहान आसान नहीं!प्यार सिर्फ पाने का नाम नहीं!मुद्दतें बीत जाती हैं किसी के इंतज़ार में!ये सिर्फ पल-दो-पल का काम नहीं!'></a>
              <a class='addthis_button_email'
                    addthis:url='http://www.shayariguru.in/Content/10631/मुहब्बत का इम्तिहान आसान'
                    addthis:title='मुहब्बत का इम्तिहान आसान'   
                    addthis:description = 'मुहब्बत का इम्तिहान आसान नहीं!प्यार सिर्फ पाने का नाम नहीं!मुद्दतें बीत जाती हैं किसी के इंतज़ार में!ये सिर्फ पल-दो-पल का काम नहीं!'></a>
               <a class='addthis_button_whatsapp'
                    addthis:url='http://www.shayariguru.in/Content/10631/मुहब्बत का इम्तिहान आसान'
                    addthis:title='मुहब्बत का इम्तिहान आसान'   
                    addthis:description = 'मुहब्बत का इम्तिहान आसान नहीं!प्यार सिर्फ पाने का नाम नहीं!मुद्दतें बीत जाती हैं किसी के इंतज़ार में!ये सिर्फ पल-दो-पल का काम नहीं!'></a>
              <a class='addthis_button_compact'
                    addthis:url='http://www.shayariguru.in/Content/10631/मुहब्बत का इम्तिहान आसान'
                    addthis:title='मुहब्बत का इम्तिहान आसान'   
                    addthis:description = 'मुहब्बत का इम्तिहान आसान नहीं!प्यार सिर्फ पाने का नाम नहीं!मुद्दतें बीत जाती हैं किसी के इंतज़ार में!ये सिर्फ पल-दो-पल का काम नहीं!'></a>
            </div>
                </div>
            </div>
        </div>
    

        <div class="card rounded mb-4">
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <h5 class="card-title"><a id="cphMain_ccContent_repContentList_hplTitle_6" href="Content/9399/%e0%a4%9a%e0%a5%87%e0%a4%b9%e0%a4%b0%e0%a5%87_%e0%a4%95%e0%a5%80_%e0%a4%b9%e0%a4%82%e0%a4%b8%e0%a5%80_%e0%a4%b8%e0%a5%87_%e0%a4%97%e0%a4%ae_%e0%a4%95%e0%a5%8b_%e0%a4%ad%e0%a5%81%e0%a4%b2%e0%a4%be_7.html">चेहरे की हंसी से गम को भुला</a></h5>
                        <h6 class="card-subtitle mb-2 text-muted">Category : <span id="cphMain_ccContent_repContentList_lblCategory_6">ग़म शायरी</span></h6>

                    </div>
                   <!-- <div class="col">
                        <div class="float-right highlighted-info">
                            <a id="cphMain_ccContent_repContentList_hypDownloadApp_6" href="../external.html?link=https://y6s46.app.goo.gl/2bnk" target="_blank"><img src="Images/icons/Android_App_Download.png" alt="Download Android App" />Download App
                            </a>
                        </div>
                    </div>-->
                </div>
                
                
                <p class="card-text my-5"><span id="cphMain_ccContent_repContentList_lblContent_6">चेहरे की हंसी से गम को भुला दो,कम बोलो पर सब कुछ बता दो,ख़ुद ना रूठो पर सबको हंसा दो,यही राज है जिन्दगी का जियो और जीना सिखा दो..</span></p>
                <div>
                    <div class='addthis_toolbox addthis_default_style addthis_32x32_style'>
              <a class='addthis_button_facebook'
                    addthis:url='http://www.shayariguru.in/Content/9399/चेहरे की हंसी से गम को भुला'
                    addthis:title='चेहरे की हंसी से गम को भुला'   
                    addthis:description = 'चेहरे की हंसी से गम को भुला दो,कम बोलो पर सब कुछ बता दो,ख़ुद ना रूठो पर सबको हंसा दो,यही राज है जिन्दगी का जियो और जीना सिखा दो..'></a>
              <a class='addthis_button_twitter'
                    addthis:url='http://www.shayariguru.in/Content/9399/चेहरे की हंसी से गम को भुला'
                    addthis:title='चेहरे की हंसी से गम को भुला'   
                    addthis:description = 'चेहरे की हंसी से गम को भुला दो,कम बोलो पर सब कुछ बता दो,ख़ुद ना रूठो पर सबको हंसा दो,यही राज है जिन्दगी का जियो और जीना सिखा दो..'></a>
              <a class='addthis_button_email'
                    addthis:url='http://www.shayariguru.in/Content/9399/चेहरे की हंसी से गम को भुला'
                    addthis:title='चेहरे की हंसी से गम को भुला'   
                    addthis:description = 'चेहरे की हंसी से गम को भुला दो,कम बोलो पर सब कुछ बता दो,ख़ुद ना रूठो पर सबको हंसा दो,यही राज है जिन्दगी का जियो और जीना सिखा दो..'></a>
               <a class='addthis_button_whatsapp'
                    addthis:url='http://www.shayariguru.in/Content/9399/चेहरे की हंसी से गम को भुला'
                    addthis:title='चेहरे की हंसी से गम को भुला'   
                    addthis:description = 'चेहरे की हंसी से गम को भुला दो,कम बोलो पर सब कुछ बता दो,ख़ुद ना रूठो पर सबको हंसा दो,यही राज है जिन्दगी का जियो और जीना सिखा दो..'></a>
              <a class='addthis_button_compact'
                    addthis:url='http://www.shayariguru.in/Content/9399/चेहरे की हंसी से गम को भुला'
                    addthis:title='चेहरे की हंसी से गम को भुला'   
                    addthis:description = 'चेहरे की हंसी से गम को भुला दो,कम बोलो पर सब कुछ बता दो,ख़ुद ना रूठो पर सबको हंसा दो,यही राज है जिन्दगी का जियो और जीना सिखा दो..'></a>
            </div>
                </div>
            </div>
        </div>
    

        <div class="card rounded mb-4">
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <h5 class="card-title"><a id="cphMain_ccContent_repContentList_hplTitle_7" href="Content/10071/%e0%a4%a6%e0%a4%bf%e0%a4%b2_%e0%a4%ae%e0%a5%87%e0%a4%82_%e0%a4%b2%e0%a4%97%e0%a5%80_%e0%a4%a5%e0%a5%80_%e0%a4%b5%e0%a5%8b_%e0%a4%aa%e0%a5%8d%e0%a4%af%e0%a4%be%e0%a4%b8_%e0%a4%9c%e0%a4%be%e0%a4%97%e0%a5%80.html">दिल में लगी थी वो प्यास जागी</a></h5>
                        <h6 class="card-subtitle mb-2 text-muted">Category : <span id="cphMain_ccContent_repContentList_lblCategory_7">सैड शायरी</span></h6>

                    </div>
                   <!-- <div class="col">
                        <div class="float-right highlighted-info">
                            <a id="cphMain_ccContent_repContentList_hypDownloadApp_7" href="../external.html?link=https://y6s46.app.goo.gl/2bnk" target="_blank"><img src="Images/icons/Android_App_Download.png" alt="Download Android App" />Download App
                            </a>
                        </div>
                    </div>-->
                </div>
                
                
                <p class="card-text my-5"><span id="cphMain_ccContent_repContentList_lblContent_7">दिल में लगी थी वो प्यास जागी है,<br/>आपसे मिलने की आस बाकी है<br/>यूँ आदत न थी ऐसे तड़पने की ऐ खुदा<br/>मेरी कितनी सजा और बाकी है।</span></p>
                <div>
                    <div class='addthis_toolbox addthis_default_style addthis_32x32_style'>
              <a class='addthis_button_facebook'
                    addthis:url='http://www.shayariguru.in/Content/10071/दिल में लगी थी वो प्यास जागी'
                    addthis:title='दिल में लगी थी वो प्यास जागी'   
                    addthis:description = 'दिल में लगी थी वो प्यास जागी है,<br/>आपसे मिलने की आस बाकी है<br/>यूँ आदत न थी ऐसे तड़पने की ऐ खुदा<br/>मेरी कितनी सजा और बाकी है।'></a>
              <a class='addthis_button_twitter'
                    addthis:url='http://www.shayariguru.in/Content/10071/दिल में लगी थी वो प्यास जागी'
                    addthis:title='दिल में लगी थी वो प्यास जागी'   
                    addthis:description = 'दिल में लगी थी वो प्यास जागी है,<br/>आपसे मिलने की आस बाकी है<br/>यूँ आदत न थी ऐसे तड़पने की ऐ खुदा<br/>मेरी कितनी सजा और बाकी है।'></a>
              <a class='addthis_button_email'
                    addthis:url='http://www.shayariguru.in/Content/10071/दिल में लगी थी वो प्यास जागी'
                    addthis:title='दिल में लगी थी वो प्यास जागी'   
                    addthis:description = 'दिल में लगी थी वो प्यास जागी है,<br/>आपसे मिलने की आस बाकी है<br/>यूँ आदत न थी ऐसे तड़पने की ऐ खुदा<br/>मेरी कितनी सजा और बाकी है।'></a>
               <a class='addthis_button_whatsapp'
                    addthis:url='http://www.shayariguru.in/Content/10071/दिल में लगी थी वो प्यास जागी'
                    addthis:title='दिल में लगी थी वो प्यास जागी'   
                    addthis:description = 'दिल में लगी थी वो प्यास जागी है,<br/>आपसे मिलने की आस बाकी है<br/>यूँ आदत न थी ऐसे तड़पने की ऐ खुदा<br/>मेरी कितनी सजा और बाकी है।'></a>
              <a class='addthis_button_compact'
                    addthis:url='http://www.shayariguru.in/Content/10071/दिल में लगी थी वो प्यास जागी'
                    addthis:title='दिल में लगी थी वो प्यास जागी'   
                    addthis:description = 'दिल में लगी थी वो प्यास जागी है,<br/>आपसे मिलने की आस बाकी है<br/>यूँ आदत न थी ऐसे तड़पने की ऐ खुदा<br/>मेरी कितनी सजा और बाकी है।'></a>
            </div>
                </div>
            </div>
        </div>
    

        <div class="card rounded mb-4">
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <h5 class="card-title"><a id="cphMain_ccContent_repContentList_hplTitle_8" href="Content/11108/%e0%a4%b9%e0%a4%9c%e0%a4%be%e0%a4%b0%e0%a5%8b%e0%a4%82_%e0%a4%a6%e0%a5%8b%e0%a4%b8%e0%a5%8d%e0%a4%a4_%e0%a4%ac%e0%a4%a8_%e0%a4%9c%e0%a4%be%e0%a4%a4%e0%a5%87_%e0%a4%b9%e0%a5%88_%e0%a4%9c%e0%a4%ac.html">हजारों दोस्त बन जाते है जब</a></h5>
                        <h6 class="card-subtitle mb-2 text-muted">Category : <span id="cphMain_ccContent_repContentList_lblCategory_8">दोस्ती शायरी</span></h6>

                    </div>
                <!--    <div class="col">
                        <div class="float-right highlighted-info">
                            <a id="cphMain_ccContent_repContentList_hypDownloadApp_8" href="../external.html?link=https://y6s46.app.goo.gl/kPAc" target="_blank"><img src="Images/icons/Android_App_Download.png" alt="Download Android App" />Download App
                            </a>
                        </div>
                    </div>-->
                </div>
                
                
                <p class="card-text my-5"><span id="cphMain_ccContent_repContentList_lblContent_8">हजारों दोस्त बन जाते है जब धन पास होता है,<br/>टूट जाता है गरीबी में जो रिश्ता ख़ास होता है.</span></p>
                <div>
                    <div class='addthis_toolbox addthis_default_style addthis_32x32_style'>
              <a class='addthis_button_facebook'
                    addthis:url='http://www.shayariguru.in/Content/11108/हजारों दोस्त बन जाते है जब'
                    addthis:title='हजारों दोस्त बन जाते है जब'   
                    addthis:description = 'हजारों दोस्त बन जाते है जब धन पास होता है,<br/>टूट जाता है गरीबी में जो रिश्ता ख़ास होता है.'></a>
              <a class='addthis_button_twitter'
                    addthis:url='http://www.shayariguru.in/Content/11108/हजारों दोस्त बन जाते है जब'
                    addthis:title='हजारों दोस्त बन जाते है जब'   
                    addthis:description = 'हजारों दोस्त बन जाते है जब धन पास होता है,<br/>टूट जाता है गरीबी में जो रिश्ता ख़ास होता है.'></a>
              <a class='addthis_button_email'
                    addthis:url='http://www.shayariguru.in/Content/11108/हजारों दोस्त बन जाते है जब'
                    addthis:title='हजारों दोस्त बन जाते है जब'   
                    addthis:description = 'हजारों दोस्त बन जाते है जब धन पास होता है,<br/>टूट जाता है गरीबी में जो रिश्ता ख़ास होता है.'></a>
               <a class='addthis_button_whatsapp'
                    addthis:url='http://www.shayariguru.in/Content/11108/हजारों दोस्त बन जाते है जब'
                    addthis:title='हजारों दोस्त बन जाते है जब'   
                    addthis:description = 'हजारों दोस्त बन जाते है जब धन पास होता है,<br/>टूट जाता है गरीबी में जो रिश्ता ख़ास होता है.'></a>
              <a class='addthis_button_compact'
                    addthis:url='http://www.shayariguru.in/Content/11108/हजारों दोस्त बन जाते है जब'
                    addthis:title='हजारों दोस्त बन जाते है जब'   
                    addthis:description = 'हजारों दोस्त बन जाते है जब धन पास होता है,<br/>टूट जाता है गरीबी में जो रिश्ता ख़ास होता है.'></a>
            </div>
                </div>
            </div>
        </div>
    

        <div class="card rounded mb-4">
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <h5 class="card-title"><a id="cphMain_ccContent_repContentList_hplTitle_9" href="Content/1202/Kya_leke_aye_they_Kya.html">Kya leke aye they Kya</a></h5>
                        <h6 class="card-subtitle mb-2 text-muted">Category : <span id="cphMain_ccContent_repContentList_lblCategory_9">Ishq Shayari</span></h6>

                    </div>
                  <!--  <div class="col">
                        <div class="float-right highlighted-info">
                            <a id="cphMain_ccContent_repContentList_hypDownloadApp_9" href="../external.html?link=https://y6s46.app.goo.gl/7wZM" target="_blank"><img src="Images/icons/Android_App_Download.png" alt="Download Android App" />Download App
                            </a>
                        </div>
                    </div>-->
                </div>
                
                
                <p class="card-text my-5"><span id="cphMain_ccContent_repContentList_lblContent_9">Kya leke aye they,<br/>Kya lekar jaoge,<br/>Mujhe SMS na karke,<br/>Zalim kitne Paise Bachaoge!</span></p>
                <div>
                    <div class='addthis_toolbox addthis_default_style addthis_32x32_style'>
              <a class='addthis_button_facebook'
                    addthis:url='http://www.shayariguru.in/Content/1202/Kya leke aye they Kya'
                    addthis:title='Kya leke aye they Kya'   
                    addthis:description = 'Kya leke aye they,<br/>Kya lekar jaoge,<br/>Mujhe SMS na karke,<br/>Zalim kitne Paise Bachaoge!'></a>
              <a class='addthis_button_twitter'
                    addthis:url='http://www.shayariguru.in/Content/1202/Kya leke aye they Kya'
                    addthis:title='Kya leke aye they Kya'   
                    addthis:description = 'Kya leke aye they,<br/>Kya lekar jaoge,<br/>Mujhe SMS na karke,<br/>Zalim kitne Paise Bachaoge!'></a>
              <a class='addthis_button_email'
                    addthis:url='http://www.shayariguru.in/Content/1202/Kya leke aye they Kya'
                    addthis:title='Kya leke aye they Kya'   
                    addthis:description = 'Kya leke aye they,<br/>Kya lekar jaoge,<br/>Mujhe SMS na karke,<br/>Zalim kitne Paise Bachaoge!'></a>
               <a class='addthis_button_whatsapp'
                    addthis:url='http://www.shayariguru.in/Content/1202/Kya leke aye they Kya'
                    addthis:title='Kya leke aye they Kya'   
                    addthis:description = 'Kya leke aye they,<br/>Kya lekar jaoge,<br/>Mujhe SMS na karke,<br/>Zalim kitne Paise Bachaoge!'></a>
              <a class='addthis_button_compact'
                    addthis:url='http://www.shayariguru.in/Content/1202/Kya leke aye they Kya'
                    addthis:title='Kya leke aye they Kya'   
                    addthis:description = 'Kya leke aye they,<br/>Kya lekar jaoge,<br/>Mujhe SMS na karke,<br/>Zalim kitne Paise Bachaoge!'></a>
            </div>
                </div>
            </div>
        </div>
    

<div id="cphMain_ccContent_pnlPaging">

</div>



<input type="hidden" name="ctl00$cphMain$ccContent$hdnPageNo" id="cphMain_ccContent_hdnPageNo" />

                </div>
                <div class="col-sm-12 col-md-3">
                
                    <div class="hidden-xs">
                        <div class="cnt_outer_wrap cnt1">
                            <span class="cnt_wrap cnt1">Submit New Shayari</span>
                        </div>
                        Submit your shayari and we will publish it on the homepage of Shayari Ki Dhuniya.
                        <br />
                        <br />
                        <a href="Submit_content.html" id="A3" class="btn btn-info">Share with us</a>
                         
                    </div>
                    <div class="hidden-xs">
                        
<div class="cnt_outer_wrap cnt1">
    <span class="cnt_wrap cnt1">Top 10 Categories</span>
</div>
<div class="cnt_block">
    
            <div class="seperator">
                <table style="padding:0px" class="cat-table">
                    <tr>
                        <td>
                            <img id="ccMessage_repCategoryList_imgArrow_0" src="Images/Icons/arrow16.png" />
                        </td>
                        <td>
                            <a id="ccMessage_repCategoryList_hplCategory_0" href="#">Ishq Shayari</a>
                            <div class="helptext">
                                <span id="ccMessage_repCategoryList_lblcntCount_0">254 shayaris</span>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        
            <div class="seperator">
                <table style="padding:0px" class="cat-table">
                    <tr>
                        <td>
                            <img id="ccMessage_repCategoryList_imgArrow_1" src="Images/Icons/arrow16.png" />
                        </td>
                        <td>
                            <a id="ccMessage_repCategoryList_hplCategory_1" href="#">Pyaar Shayari</a>
                            <div class="helptext">
                                <span id="ccMessage_repCategoryList_lblcntCount_1">202 shayaris</span>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        
            <div class="seperator">
                <table style="padding:0px" class="cat-table">
                    <tr>
                        <td>
                            <img id="ccMessage_repCategoryList_imgArrow_2" src="Images/Icons/arrow16.png" />
                        </td>
                        <td>
                            <a id="ccMessage_repCategoryList_hplCategory_2" href="#">Dard Shayari</a>
                            <div class="helptext">
                                <span id="ccMessage_repCategoryList_lblcntCount_2">198 shayaris</span>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        
            <div class="seperator">
                <table style="padding:0px" class="cat-table">
                    <tr>
                        <td>
                            <img id="ccMessage_repCategoryList_imgArrow_3" src="Images/Icons/arrow16.png" />
                        </td>
                        <td>
                            <a id="ccMessage_repCategoryList_hplCategory_3" href="#">Sad Shayari</a>
                            <div class="helptext">
                                <span id="ccMessage_repCategoryList_lblcntCount_3">197 shayaris</span>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        
            <div class="seperator">
                <table style="padding:0px" class="cat-table">
                    <tr>
                        <td>
                            <img id="ccMessage_repCategoryList_imgArrow_4" src="Images/Icons/arrow16.png" />
                        </td>
                        <td>
                            <a id="ccMessage_repCategoryList_hplCategory_4" href="#">Love Shayari</a>
                            <div class="helptext">
                                <span id="ccMessage_repCategoryList_lblcntCount_4">192 shayaris</span>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        
            <div class="seperator">
                <table style="padding:0px" class="cat-table">
                    <tr>
                        <td>
                            <img id="ccMessage_repCategoryList_imgArrow_5" src="Images/Icons/arrow16.png" />
                        </td>
                        <td>
                            <a id="ccMessage_repCategoryList_hplCategory_5" href="#">Prem Shayari</a>
                            <div class="helptext">
                                <span id="ccMessage_repCategoryList_lblcntCount_5">186 shayaris</span>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        
            <div class="seperator">
                <table style="padding:0px" class="cat-table">
                    <tr>
                        <td>
                            <img id="ccMessage_repCategoryList_imgArrow_6" src="Images/Icons/arrow16.png" />
                        </td>
                        <td>
                            <a id="ccMessage_repCategoryList_hplCategory_6" href="#">इंतज़ार शायरी</a>
                            <div class="helptext">
                                <span id="ccMessage_repCategoryList_lblcntCount_6">172 shayaris</span>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        
            <div class="seperator">
                <table style="padding:0px" class="cat-table">
                    <tr>
                        <td>
                            <img id="ccMessage_repCategoryList_imgArrow_7" src="Images/Icons/arrow16.png" />
                        </td>
                        <td>
                            <a id="ccMessage_repCategoryList_hplCategory_7" href="#">Dard-e-Dil</a>
                            <div class="helptext">
                                <span id="ccMessage_repCategoryList_lblcntCount_7">170 shayaris</span>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        
           
        
            <div class="seperator">
                <table style="padding:0px" class="cat-table">
                    <tr>
                        <td>
                            <img id="ccMessage_repCategoryList_imgArrow_9" src="Images/Icons/arrow16.png" />
                        </td>
                        <td>
                            <a id="ccMessage_repCategoryList_hplCategory_9" href="#">Mohabbat Shayari</a>
                            <div class="helptext">
                                <span id="ccMessage_repCategoryList_lblcntCount_9">161 shayaris</span>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        
    <br />
    <div class="pull-right">
        <a href="#">(All Categories)</a>
    </div>
</div>

                    </div>
                    <br />
                    
                    <div class="hidden-xs">
                        
<div class="cnt_outer_wrap cnt1">
    <span class="cnt_wrap cnt1">Recent Entries</span>
</div>
<div class="cnt_block">
    
            <div class="seperator">
                <table style="padding:0px" class="cat-table">
                    <tr>
                        <td>
                            <img id="ccRecent_repContentList_imgArrow_0" src="Images/Icons/arrow16.png" />
                        </td>
                        <td>
                            <a id="ccRecent_repContentList_hplCategory_0" href="Content/1463/Ajnabi_galiyon_se_hum_guzra.html">Ajnabi galiyon se hum g..</a>
                            <div class="helptext">
                                Category : <span id="ccRecent_repContentList_lblCategory_0">Ishq Shayari</span>
                            </div>
                        </td>
                    </tr>
                </table>
             </div> 
        
            <div class="seperator">
                <table style="padding:0px" class="cat-table">
                    <tr>
                        <td>
                            <img id="ccRecent_repContentList_imgArrow_1" src="Images/Icons/arrow16.png" />
                        </td>
                        <td>
                            <a id="ccRecent_repContentList_hplCategory_1" href="Content/1973/Chand_Taare_Toh_Na_La_Sakunga.html">Chand Taare Toh Na La S..</a>
                            <div class="helptext">
                                Category : <span id="ccRecent_repContentList_lblCategory_1">Gham Shayari</span>
                            </div>
                        </td>
                    </tr>
                </table>
             </div> 
        
            <div class="seperator">
                <table style="padding:0px" class="cat-table">
                    <tr>
                        <td>
                            <img id="ccRecent_repContentList_imgArrow_2" src="Images/Icons/arrow16.png" />
                        </td>
                        <td>
                            <a id="ccRecent_repContentList_hplCategory_2" href="Content/2046/Dil_K_Qareeb_Aa_K_Jab_Wo.html">Dil K Qareeb Aa K Jab Wo</a>
                            <div class="helptext">
                                Category : <span id="ccRecent_repContentList_lblCategory_2">Bewafa Shayari</span>
                            </div>
                        </td>
                    </tr>
                </table>
             </div> 
        
            <div class="seperator">
                <table style="padding:0px" class="cat-table">
                    <tr>
                        <td>
                            <img id="ccRecent_repContentList_imgArrow_3" src="Images/Icons/arrow16.png" />
                        </td>
                        <td>
                            <a id="ccRecent_repContentList_hplCategory_3" href="Content/1584/Meri_Chahat_ne_Use_Khushi.html">Meri Chahat ne Use Khushi</a>
                            <div class="helptext">
                                Category : <span id="ccRecent_repContentList_lblCategory_3">Pyaar Shayari</span>
                            </div>
                        </td>
                    </tr>
                </table>
             </div> 
        
            <div class="seperator">
                <table style="padding:0px" class="cat-table">
                    <tr>
                        <td>
                            <img id="ccRecent_repContentList_imgArrow_4" src="Images/Icons/arrow16.png" />
                        </td>
                        <td>
                            <a id="ccRecent_repContentList_hplCategory_4" href="Content/1269/Unhe_Nafrat_Huyi_Saare_Jahan.html">Unhe Nafrat Huyi Saare ..</a>
                            <div class="helptext">
                                Category : <span id="ccRecent_repContentList_lblCategory_4">Dua Shayari</span>
                            </div>
                        </td>
                    </tr>
                </table>
             </div> 
        
</div>

                    </div>
                    <br /><br />
                    <div class="g-person" data-width="250" data-href="//plus.google.com/u/0/115970425190678818665" data-rel="author"></div>
                    <br /><br />
                    
                </div>
            </div>
        </div>
        <br />
        <!-- Footer -STARTS -->
        <footer style="background-color:#333;">
            <div class="container">
                <div class="nav-footer no-bdr-btm">
                    <table cellspacing="5" style="width: 100%; border-bottom: solid 0px #747474;">
                        <tr>
                            <td style="width: 33%; border-right: solid 1px #747474;">
                                <a href="#">About Me</a>
                            </td>
                            <td style="width: 33%; border-right: solid 1px #747474;">
                                <a href="#">Privacy Policy</a>
                            </td>
                            <td style="width: 33%; font-size: 12px; font-weight: normal;">
                                Developed By & Under<br />
                                <a href="#" target="_blank">Rohit Choubey</a>
                            </td>
                        </tr>
                    </table>
                    <div class="credits">
                        Copyright &copy; 2019 - All Rights Reserved.
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer -ENDS -->
        <script type="text/javascript">

</script>

    </form>
    
    
    
    <script src="bundles/js_bundle9cfa" type="text/javascript" async="async"></script>

    
    <script type="text/javascript" src="JS/addthis_widget.js" async="async"></script>

</body>

<!-- Mirrored from www.shayariguru.in/index.aspx by HTTrack Website Copier/3.x [XR&CO'2017], Sun, 14 Jul 2019 08:27:04 GMT -->
</html>
