<% if $BackgroundImage %>
	<div class="img-container" style="background-image: url($BackgroundImage.URL);">
		<div class="img-fifty-top"></div>
	</div>
<% end_if %>
<div class="gradient">
	<div class="container clearfix">
		<div class="white-cover"></div>
	    <section class="initiatives-content <% if $BackgroundImage %>margin-top<% end_if %>">
	    	$Form
	    	$Content
	    
			<ul class="initiatives-list">
                  <% loop $Children %>
                        <li>
                              <% if $MainImage %>
                              <a href="$Link" class="initiatives-link">
                                    
                                    <img src="$MainImage.CroppedImage(350,234).URL" alt="$FirstName $LastName" class="initiatives-img">
                              </a>
                              <% else %>
                              <a href="$Link" class="initiatives-link">
                       
										
	                          <p class = "NoLogo">$Title</p>  
							  <img src="division-project/images/dosl1.png" alt="$FirstName $LastName" class="initiatives-img">	 		
								 
								 		
                              </a>
                              <% end_if %>
                         
                        </li>
                  <% end_loop %>
                        <li class="filler"></li>
                        <li class="filler"></li>
            </ul>
        </section>
                
	    <section class="sec-content hide-print">
	    	<% include SideNav %>
	    </section>
	</div>
</div>
<%-- <% include TopicsAndNews %> --%>