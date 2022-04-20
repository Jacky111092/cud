<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--   <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="javatime" %>
 --%> 
 

<style>
.check {
  -webkit-appearance: none; /*hides the default checkbox*/
  height: 20px;
  width: 20px;
  position: relative;
   top: 20px;
  /* left: 20px; */ 
  transition: 0.10s;
  background-color: #0E9700; /* #FE0006; */
  text-align: center;
  font-weight: 600;
  color: white;
  border-radius: 3px;
  outline: none;
}

.check:checked {
  background-color: #0E9700;
}

.check:before {
  content: "✖";
}
.check:checked:before {
  content: "✔";
}

.check:hover {
  cursor: pointer; 
  opacity: 0.8;
}


</style>
<jsp:include page='layout/bohni_dash_header.jsp'/>

<!-- @section('content')
 -->    
<div class="container breadcrumb-container">
<nav aria-label="breadcrumb">
<ol class="breadcrumb m-0">
	<li class="breadcrumb-item"><a href="/dashboard"><i class="fa fa-home"></i> Dashboard</a></li>
	<li class="breadcrumb-item active" aria-current="page">Timeline</li>
	</ol>
</nav>
</div>


<section id="timelineSec">
<c:set var="total" value="${0}"/> 
<c:forEach items="${allCampaignList}" var="allCampaign">
<c:forEach items="${listCampaignCreativeUpload}" var="CampaignCreativeUpload">

	<div class="container">

        <div class="main-card mb-3 card">
            <div class="card-body">
                <div class="row">
                    <div class="col-12 col-md-8"><h5 class="card-title">User Timeline</h5></div>
                    <div class="col-12 col-md-4">
                        <div class="form-group float-right">

                        <select class="select-box" >
                        
		
            							<option value="${allCampaign.getCampaign_name()}">${allCampaign.getCampaign_name()}</option>
            					
                            <!-- @foreach($Campaigns['Campaign_Details'] as $campaign)
                                @if($Timeline['timeline']['timeline']['id'] == $campaign['id']) -->
                                
                                   <!--  <option value="/timelines/{{$campaign['id']}}" selected>{{$campaign['campaign_name']}}</option>
                                @else
                                    <option value="/timelines/{{$campaign['id']}}">{{$campaign['campaign_name']}}</option>
                                @endif
                            @endforeach -->
                        </select>
                        </div>
                    </div>
                </div>


                
                <div class="vertical-timeline vertical-timeline--animate vertical-timeline--one-column">
                    <!-- <div class="vertical-timeline-item vertical-timeline-element">
                        <div> <span class="vertical-timeline-element-icon bounce-in"> <i class="badge badge-dot badge-dot-xl badge-success"></i> </span>
                            <div class="vertical-timeline-element-content bounce-in">
                                <h4 class="timeline-title">Meeting with client</h4>
                                <p>Meeting with USA Client, today at <a href="javascript:void(0);" data-abc="true">12:00 PM</a></p> <span class="vertical-timeline-element-date">9:30 AM</span>
                            </div>
                        </div>
                    </div> -->
                   <!--  @php
                    $style = ($Timeline['timeline']['timeline']['is_payment_done'] == 1) ? 'badge-success' : 'badge-secondary'
                    @endphp -->
                    <div class="vertical-timeline-item vertical-timeline-element">
                        <div>
                        <c:choose> 
                        <c:when test="${not empty allCampaign.getPayment_flag()}">
                       
                       
                        <span class="vertical-timeline-element-icon bounce-in">
                        <span class="badge badge-dot badge-dot-xl badge-success"> </span> </span>
<!--                         <input type="checkbox" name="switch" class="check">
 -->                         <!-- <p>Some prooooooofs</p> -->
                        	
                         		
                         	</c:when>
                         	<c:otherwise>
                         	
                         	<span class="vertical-timeline-element-icon bounce-in"> 
                         	<span class="badge badge-dot badge-dot-xl badge-secondary"> </span> </span>
                         	</c:otherwise>
                         	
                         	
                         	</c:choose>
                            <div class="vertical-timeline-element-content bounce-in">
                                <h4 class="timeline-title">Payment</h4>
                               <p> Payment is done, dashboard is open to use </p> <span class="vertical-timeline-element-date">
                               
                               <fmt:formatDate value="${allCampaign.getPayment_created_date()}" pattern="dd MMM yyyy" />
                               <%-- ${allCampaign.getPayment_created_date()} --%><!-- {{$Timeline['timeline']['timeline']['payment_date']}} --></span>
                           </div>
                        </div>
                    </div>
                    

                    

                   <!--  @php
                    $style = ($Timeline['timeline']['timeline']['is_creative_uploaded'] == 1) ? 'badge-success' : 'badge-secondary'
                    @endphp -->

                    <div class="vertical-timeline-item vertical-timeline-element">
                        <div> 
                        
                        <c:choose> 
                         <c:when test="${ empty CampaignCreativeUpload}">
                         <span class="vertical-timeline-element-icon bounce-in"> 
                         	<span class="badge badge-dot badge-dot-xl badge-secondary"> </span> </span>
                         </c:when>
                       <c:when test="${CampaignCreativeUpload.getCampaign().getCampaignId() == allCampaign.getCampaignId()}">
   				

                        <span class="vertical-timeline-element-icon bounce-in">
                        <span class="badge badge-dot badge-dot-xl badge-success"> </span> </span>
                          </c:when>
                          
                         <c:otherwise>
                         	
                         	<span class="vertical-timeline-element-icon bounce-in"> 
                         	<span class="badge badge-dot badge-dot-xl badge-secondary"> </span> </span>
                         	</c:otherwise>
                         	
                         	</c:choose>
                         
                            <div class="vertical-timeline-element-content bounce-in">
                                <h4 class="timeline-title">Creative Upload</h4>
                                <p>Initial creatives are done for campaign. </p> <span class="vertical-timeline-element-date">
                                
<%--                                 <javatime:parseLocalDateTime value="${CampaignCreativeUpload.getCreated_date()}" pattern="yyyy-MM-dd" var="parsedDate" />
 --%>                                <%-- <fmt: value="${CampaignCreativeUpload.getCreated_date()}" pattern="dd MMM yyyy"/> --%>
                                 <%-- <fmt:parseDate value="${CampaignCreativeUpload.getCreated_date()}" var="theDate" pattern="dd MMM yyyy" /> --%>
                                 <fmt:formatDate value="${CampaignCreativeUpload.getCreated_date()}" pattern="dd MMM yyyy" />
                                
                                <!-- {{$Timeline['timeline']['timeline']['creatives_date']}} --></span>
                            </div>
                        </div>
                    </div>

                    <!-- @php
                    $style = ($Timeline['timeline']['timeline']['is_live'] == 1) ? 'badge-success' : 'badge-secondary'
                    @endphp -->

                    <div class="vertical-timeline-item vertical-timeline-element">
                        <div> 
                        <c:choose>
                        <c:when test="${not empty allCampaign.getLive_campaign_flag()}">
                       
                       
                        <span class="vertical-timeline-element-icon bounce-in">
                        <span class="badge badge-dot badge-dot-xl badge-success"> </span> </span>
<!--                         <input type="checkbox" name="switch" class="check">
 -->                         <!-- <p>Some prooooooofs</p> -->
                        	
                         		
                         	</c:when>
                         	<c:otherwise>
                         	
                         	<span class="vertical-timeline-element-icon bounce-in"> 
                         	<span class="badge badge-dot badge-dot-xl badge-secondary"> </span> </span>
                         	</c:otherwise>
                         	
                         	
                         	</c:choose>
                            <div class="vertical-timeline-element-content bounce-in">
                                <h4 class="timeline-title">Order Live</h4>
                                <p>Order is live...!!</p>
                                <span class="vertical-timeline-element-date">
								 <fmt:formatDate value="${allCampaign.getLive_campaign_created_date()}" pattern="dd MMM yyyy" />
								</span>
                            </div>
                        </div>
                    </div>

                    
                    <!-- @foreach($Timeline['timeline']['timeline']['vehicle_assignments'] as $vehicle_assign)
 -->
 					

                    <div class="vertical-timeline-item vertical-timeline-element">
                        <div> <span class="vertical-timeline-element-icon bounce-in">
                          </span>
                            <div class="vertical-timeline-element-content bounce-in">
                            
		          <c:forEach items="${allCampaignAndVehicle}" var="listCampaignAndVehicle">
		          
		          
		          		<c:forEach items="${listCampaignAndVehicle}" var="campaignAndVehicleDetails" varStatus="status">
		          			<c:choose>
								<c:when test="${allCampaign.getCampaignId() == campaignAndVehicleDetails.getCampaign().getCampaignId()}">
		          					
		          					<p class="num"><c:set var="total" value="${status.count}" /><%-- ${campaignAndVehicleDetails.getTotal_kms_ran()} --%></p>
			          		<%-- <p class="num">${TotalKmsRan} </p> --%>
          <%-- <p class="num">${TotalKmsRan} </p> --%>
				          </c:when>
				          </c:choose>
				          </c:forEach>
				          </c:forEach>
				          <%-- <p class="num">${total}</p> --%>
                                <p class="sub-timeline"><i class="fa fa-arrow-right" aria-hidden="true"></i> ${total} <!-- {{$vehicle_assign['total']}} --> Vehicles</p>
                                <span class="vertical-timeline-element-date"><!-- {{$vehicle_assign['date']}} --></span>
                            </div>
                        </div>
                    </div>

                    <!-- @endforeach

                    @php
                    $style = ($Timeline['timeline']['timeline']['is_approved'] == 1) ? 'badge-success' : 'badge-secondary'
                    @endphp -->

                    <div class="vertical-timeline-item vertical-timeline-element">
                        <div> 
							<c:forEach items="${allCampaignAndVehicle}" var="listCampaignAndVehicle">
		          
		          
		          		<c:forEach items="${listCampaignAndVehicle}" var="campaignAndVehicleDetails" varStatus="status">
		          			<c:choose>
								<c:when test="${allCampaign.getCampaignId() == campaignAndVehicleDetails.getCampaign().getCampaignId()}">
		          					<c:forEach items="${listCampaignPhotos}" var="listofCampaignPhotos">
                        				<c:forEach items="${listofCampaignPhotos}" var="CampaignPhotos" varStatus="statuss">
		          					
			          						<c:choose>
												<c:when test="${CampaignPhotos.getCv().getLive_campaign_id() == campaignAndVehicleDetails.getLive_campaign_id()}">
												<c:choose>
												<c:when test = "${CampaignPhotos.getFile_type()=='Proof of Work 1'}">
													<span class="vertical-timeline-element-icon bounce-in">
                        								<span class="badge badge-dot badge-dot-xl badge-success"> </span> </span>
												<div class="vertical-timeline-element-content bounce-in">
                                <h4 class="timeline-title">Installation</h4>
                                <p>Creative installation are done and campaign is ready to hit the road</p> <span class="vertical-timeline-element-date"><fmt:formatDate value="${CampaignPhotos.getCreated_date()}" pattern="dd MMM yyyy" /></span>
                            </div>
												
												
												</c:when>
												<c:otherwise>
													<span class="vertical-timeline-element-icon bounce-in">
                        								<span class="badge badge-dot badge-dot-xl badge-secondary"> </span> </span>
												<div class="vertical-timeline-element-content bounce-in">
                                <h4 class="timeline-title">Installation</h4>
                                <p>Creative installation are done and campaign is ready to hit the road</p> <span class="vertical-timeline-element-date"></span>
                            </div>
												</c:otherwise>
												</c:choose>
												</c:when>
						</c:choose>
						</c:forEach>
						</c:forEach>
				          </c:when>
				          </c:choose>
				          </c:forEach>
				          </c:forEach>
                          <!--   <div class="vertical-timeline-element-content bounce-in">
                                <h4 class="timeline-title">Installation</h4>
                                <p>Creative installation are done and campaign is ready to hit the road</p> <span class="vertical-timeline-element-date">{{$Timeline['timeline']['timeline']['approved_date']}}</span>
                            </div> -->
                        </div>
                    </div>

                    <!-- @php
                    $style = ($Timeline['timeline']['timeline']['is_active'] == 1) ? 'badge-success' : 'badge-secondary'
                    @endphp -->

                    <div class="vertical-timeline-item vertical-timeline-element">
                        <div> <c:forEach items="${allCampaignAndVehicle}" var="listCampaignAndVehicle">
		          
		          
		          		<c:forEach items="${listCampaignAndVehicle}" var="campaignAndVehicleDetails" varStatus="status">
		          			<c:choose>
								<c:when test="${allCampaign.getCampaignId() == campaignAndVehicleDetails.getCampaign().getCampaignId()}">
		          					<c:forEach items="${listCampaignPhotos}" var="listofCampaignPhotos">
                        				<c:forEach items="${listofCampaignPhotos}" var="CampaignPhotos" varStatus="statuss">
		          					
			          						<c:choose>
												<c:when test="${CampaignPhotos.getCv().getLive_campaign_id() == campaignAndVehicleDetails.getLive_campaign_id()}">
												<c:choose>
												<c:when test = "${CampaignPhotos.getFile_type()=='Proof of Work 1'}">
													<span class="vertical-timeline-element-icon bounce-in">
                        								<span class="badge badge-dot badge-dot-xl badge-success"> </span> </span>
													<div class="vertical-timeline-element-content bounce-in">
							                                <h4 class="timeline-title">Campaign Activation</h4>
                                								<p>Campaign is activated , vehicles are on road.</p> <span class="vertical-timeline-element-date"><fmt:formatDate value="${CampaignPhotos.getCreated_date()}" pattern="dd MMM yyyy" /></span>
							                            </div>
												</c:when>
												<c:otherwise>
													<span class="vertical-timeline-element-icon bounce-in">
                        								<span class="badge badge-dot badge-dot-xl badge-secondary"> </span> </span>
														<div class="vertical-timeline-element-content bounce-in">
										                                <h4 class="timeline-title">Campaign Activation</h4>
                                											<p>Campaign is activated , vehicles are on road.</p> <span class="vertical-timeline-element-date"></span>
										                            </div>
												</c:otherwise>
												</c:choose>
												</c:when>
						</c:choose>
						</c:forEach>
						</c:forEach>
				          </c:when>
				          </c:choose>
				          </c:forEach>
				          </c:forEach>
                           
                        </div>
                    </div>


<!--                     @if($Timeline['timeline']['timeline']['proof_of_work1'] != null)
 -->                <c:set var="totall" value="${0}"/> 
    
                    <div class="vertical-timeline-item vertical-timeline-element">
                        <div> 
                        <c:forEach items="${allCampaignAndVehicle}" var="listCampaignAndVehicle">
		          
		          
		          		<c:forEach items="${listCampaignAndVehicle}" var="campaignAndVehicleDetails">
		          			<c:choose>
								<c:when test="${allCampaign.getCampaignId() == campaignAndVehicleDetails.getCampaign().getCampaignId()}">
								
		          					<c:forEach items="${listCampaignPhotos}" var="listofCampaignPhotos">
                        				<c:forEach items="${listofCampaignPhotos}" var="CampaignPhotos" varStatus="statuss">
		          					
			          						<c:choose>
												<c:when test="${CampaignPhotos.getCv().getLive_campaign_id() == campaignAndVehicleDetails.getLive_campaign_id()}">
												<c:choose>
												<c:when test = "${CampaignPhotos.getFile_type()=='Proof of Work 1'}">
												<c:set var="totall" value="${statuss.count}" />
												
												</c:when>
												
												</c:choose>
												</c:when>
						</c:choose>
						</c:forEach>
						</c:forEach>
				          </c:when>
				          </c:choose>
				          </c:forEach>
				          </c:forEach>
				          <c:choose>
				          <c:when test = "${total>0 and total==totall}">
				          <span class="vertical-timeline-element-icon bounce-in"> 
								                        <span class="badge badge-dot badge-dot-xl badge-success"> </span>
								                         </span>
				          </c:when>
				          <c:otherwise>
												<span class="vertical-timeline-element-icon bounce-in"> 
                         						<span class="badge badge-dot badge-dot-xl badge-secondary"> </span> </span>
												</c:otherwise>
				          </c:choose>
                        
                            <div class="vertical-timeline-element-content bounce-in">
                                <h4 class="timeline-title">Proof of Work 1</h4>
                                <p>Some proofs of the campaign , see images more on <a href="/reports">Reports</a></p> <span class="vertical-timeline-element-date"><!-- {{$Timeline['timeline']['timeline']['proof_of_work1']['date']}} --></span>
                            </div>
                        </div>
                    </div>
                    
                   <%--  </c:forEach>
                    </c:forEach> --%>

<!--                     @else
 -->
                   

                    <!-- @endif

                    @if($Timeline['timeline']['timeline']['proof_of_work2'] != null) -->
                   <c:set var="totall" value="${0}"/>
                    <div class="vertical-timeline-item vertical-timeline-element">
                        <div> <c:forEach items="${allCampaignAndVehicle}" var="listCampaignAndVehicle">
		          
		          
		          		<c:forEach items="${listCampaignAndVehicle}" var="campaignAndVehicleDetails" varStatus="status">
		          			<c:choose>
								<c:when test="${allCampaign.getCampaignId() == campaignAndVehicleDetails.getCampaign().getCampaignId()}">
		          					<c:forEach items="${listCampaignPhotos}" var="listofCampaignPhotos">
                        				<c:forEach items="${listofCampaignPhotos}" var="CampaignPhotos" varStatus="statuss">
		          					
			          						<c:choose>
												<c:when test="${CampaignPhotos.getCv().getLive_campaign_id() == campaignAndVehicleDetails.getLive_campaign_id()}">
												<c:choose>
												<c:when test = "${CampaignPhotos.getFile_type()=='Proof of Work 2'}">
												<c:set var="totall" value="${statuss.count}" />
												
												</c:when>
												
												</c:choose>
												</c:when>
						</c:choose>
						</c:forEach>
						</c:forEach>
				          </c:when>
				          </c:choose>
				          </c:forEach>
				          </c:forEach>
				          <c:choose>
				          <c:when test = "${total>0 and total==totall}">
				          <span class="vertical-timeline-element-icon bounce-in"> 
								                        <span class="badge badge-dot badge-dot-xl badge-success"> </span>
								                         </span>
				          </c:when>
				          <c:otherwise>
												<span class="vertical-timeline-element-icon bounce-in"> 
                         						<span class="badge badge-dot badge-dot-xl badge-secondary"> </span> </span>
												</c:otherwise>
				          </c:choose>
                            <div class="vertical-timeline-element-content bounce-in">
                                <h4 class="timeline-title">Proof of Work 2</h4>
                                <p>Some proofs of the campaign , see images more on <a href="/reports">Reports</a></p> <span class="vertical-timeline-element-date"><!-- {{$Timeline['timeline']['timeline']['proof_of_work2']['date']}} --></span>
                            </div>
                        </div>
                    </div>

<!--                     @else
 -->
                    

                    <!-- @endif

                    @if($Timeline['timeline']['timeline']['proof_of_work3'] != null) -->
                   <c:set var="totall" value="${0}"/>
                    <div class="vertical-timeline-item vertical-timeline-element">
                        <div> <c:forEach items="${allCampaignAndVehicle}" var="listCampaignAndVehicle">
		          
		          
		          		<c:forEach items="${listCampaignAndVehicle}" var="campaignAndVehicleDetails" varStatus="status">
		          			<c:choose>
								<c:when test="${allCampaign.getCampaignId() == campaignAndVehicleDetails.getCampaign().getCampaignId()}">
		          					<c:forEach items="${listCampaignPhotos}" var="listofCampaignPhotos">
                        				<c:forEach items="${listofCampaignPhotos}" var="CampaignPhotos" varStatus="statuss">
		          					
			          						<c:choose>
												<c:when test="${CampaignPhotos.getCv().getLive_campaign_id() == campaignAndVehicleDetails.getLive_campaign_id()}">
												<c:choose>
												<c:when test = "${CampaignPhotos.getFile_type()=='Proof of Work 3'}">
												<c:set var="totall" value="${statuss.count}" />
												
												</c:when>
												
												</c:choose>
												</c:when>
						</c:choose>
						</c:forEach>
						</c:forEach>
				          </c:when>
				          </c:choose>
				          </c:forEach>
				          </c:forEach>
				          
				          <c:choose>
				         <c:when test = "${total>0 and total==totall}">
				          <span class="vertical-timeline-element-icon bounce-in"> 
								                        <span class="badge badge-dot badge-dot-xl badge-success"> </span>
								                         </span>
				          </c:when>
				          <c:otherwise>
												<span class="vertical-timeline-element-icon bounce-in"> 
                         						<span class="badge badge-dot badge-dot-xl badge-secondary"> </span> </span>
												</c:otherwise>
				          </c:choose>
                            <div class="vertical-timeline-element-content bounce-in">
                                <h4 class="timeline-title">Proof of Work 3</h4>
                                <p>Some proofs of the campaign , see images more on <a href="/reports">Reports</a></p> <span class="vertical-timeline-element-date"></span>
                            </div>
                        </div>
                    </div>

<!--                     @else
 -->
                   

                   <!--  @endif

                    @if($Timeline['timeline']['timeline']['proof_of_work4'] != null) -->
                     <c:set var="totall" value="${0}"/>
                   
                    <div class="vertical-timeline-item vertical-timeline-element">
                        <div><c:forEach items="${allCampaignAndVehicle}" var="listCampaignAndVehicle">
		          
		          
		          		<c:forEach items="${listCampaignAndVehicle}" var="campaignAndVehicleDetails" varStatus="status">
		          			<c:choose>
								<c:when test="${allCampaign.getCampaignId() == campaignAndVehicleDetails.getCampaign().getCampaignId()}">
		          					<c:forEach items="${listCampaignPhotos}" var="listofCampaignPhotos">
                        				<c:forEach items="${listofCampaignPhotos}" var="CampaignPhotos" varStatus="statuss">
		          					
			          						<c:choose>
												<c:when test="${CampaignPhotos.getCv().getLive_campaign_id() == campaignAndVehicleDetails.getLive_campaign_id()}">
												<c:choose>
												<c:when test = "${CampaignPhotos.getFile_type()=='Proof of Work 4'}">
												<c:set var="totall" value="${statuss.count}" />
												
												
												</c:when>
												
												</c:choose>
												</c:when>
						</c:choose>
						</c:forEach>
						</c:forEach>
				          </c:when>
				          </c:choose>
				          </c:forEach>
				          </c:forEach>
				          <c:choose>
				          <c:when test = "${total>0 and total==totall}">
				          <span class="vertical-timeline-element-icon bounce-in"> 
								                        <span class="badge badge-dot badge-dot-xl badge-success"> </span>
								                         </span>
				          </c:when>
				          <c:otherwise>
												<span class="vertical-timeline-element-icon bounce-in"> 
                         						<span class="badge badge-dot badge-dot-xl badge-secondary"> </span> </span>
												</c:otherwise>
				          </c:choose>
                            <div class="vertical-timeline-element-content bounce-in">
                                <h4 class="timeline-title">Proof of Work 4</h4>
                                <p>Some proofs of the campaign , see images more on <a href="/reports">Reports</a></p> <span class="vertical-timeline-element-date"></span>
                            </div>
                        </div>
                    </div>

<!--                     @else
 -->
                    

                    <!-- @endif

                     @php
                    $style = ($Timeline['timeline']['timeline']['is_closed'] == 1) ? 'badge-success' : 'badge-secondary'
                    @endphp -->

                    <div class="vertical-timeline-item vertical-timeline-element">
                        <div> <span class="vertical-timeline-element-icon bounce-in"> <i class="badge badge-dot badge-dot-xl {{$style}}"> </i> </span>
                            <div class="vertical-timeline-element-content bounce-in">
                                <h4 class="timeline-title">Campaign End</h4>
                                <p>Campaign Ends...!!!</p> <span class="vertical-timeline-element-date"></span>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
</div>
</c:forEach>
</c:forEach>
</section>




	<script type="text/javascript" src="new-dashboard/assets/user/OwlCarousel/owl.js"></script>
	
	<script type="text/javascript">
		$('.owl-carousel').owlCarousel({
			loop: true,
			margin: 10,
			nav: true,
			navText: [
			"<i class='fa fa-caret-left'></i>",
			"<i class='fa fa-caret-right'></i>"
			],
			autoplay: true,
			autoplayHoverPause: true,
			responsive: {
			0: {
				items: 2
			},
			600: {
				items: 3
			},
			1000: {
				items: 5
			}
			}
		})
	</script>


 



<!-- @endsection
 -->
