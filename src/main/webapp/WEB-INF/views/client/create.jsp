<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="content-wrapper">
    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row justify-content-center">
          <div class="col-sm-8 mb-5" style="margin-top:55px">
            <div class="card">
            
				<div class="card-header bg-dark" >
					<div class="row">
						<div class="col text-center">
							<h4 style="font-size: 21px; font-weight: bold;">CREATE ACTION</h4>
						</div>					
					</div>
				</div>
				
				<div class="card-body">
					<form:form modelAttribute="client" action="abc.com/create" method="post">
						<div class="row">
							<div class="col-sm-5 ml-5">
								<div class="form-group">
	                                <label>Client Number</label>
	                                <form:input path="clientnumber" readonly="true" class="form-control"  />
	                               	<form:errors path="clientnumber" />
	                            </div>
							</div>
							
							<div class="col-sm-5 ml-5">
								<div class="form-group">
	                                <label>Identity Number</label>
	                                <form:input path="identitynumber"  class="form-control"/>
	                               	<form:errors path="identitynumber" />
	                               	<c:if test="${not empty clientMess }">
										<div class="mt-1 ml-1" style="font-size:16px;color:brown"><i>${clientMess }</i></div>
									</c:if>
	                            </div>
							</div>
						</div>
						
						<div class="row mt-1">
							<div class="col-sm-5 ml-5">
								<div class="form-group">
	                                <label>First Name</label>
	                                <form:input path="firstname" class="form-control"/>
	                               	<form:errors path="firstname" />
	                            </div>
							</div>
							
							<div class="col-sm-5 ml-5">
								<div class="form-group">
	                                <label>Last Name</label>
	                                <form:input path="lastname" class="form-control"/>
	                               	<form:errors path="lastname" />
	                            </div>
							</div>
						</div>
						
						<div class="row mt-1">
							<div class="col-sm-5 ml-5">
								<div class="form-group">
	                                <label>Gender</label>
	                                <form:select class="form-control" path="gender.code">
	                            		<form:options items="${genders }"/>
	                            	</form:select>                        
	                            </div>
							</div>
							
							<div class="col-sm-5 ml-5">
								<div class="form-group">
	                                <label>Date of Birth</label>
	                                <form:input path="dob" type="date" class="form-control"/>   
	                                <form:errors path="dob" />                            
	                            </div>
							</div>
						</div>
						
						<div class="row mt-1">
							<div class="col-sm-5 ml-5">
								<div class="form-group">
	                                <label>Marital Status</label>
	                                <form:select class="form-control" path="maritalstatus.code">
	                            		<form:options items="${maritalstatus }"/>
	                            	</form:select>        
	                            </div>
							</div>
							
							<div class="col-sm-5 ml-5">
								<div class="form-group">
	                                <label>Country</label>
	                                <form:select class="form-control" path="country.code">
	                            		<form:options items="${countries }"/>
	                            	</form:select>	                       
	                            </div>
							</div>
						</div>
						
						<div class="row mt-1">
							<div class="col-sm-11 ml-5" style="padding-right:30px">
								<div class="form-group">
	                                <label>Address</label>
	                                <form:input path="address" type="text" class="form-control"/>  
	                                <form:errors path="address" />                                                      
	                            </div>
							</div>
						</div>
						
						<hr />
						
						<div class="row justify-content-end">
							<div class="col-sm-3" style="margin-right:-3px">
								<div class="input-group">
									<div class="input-group-prepend">
										<button class="btn btn-outline-dark" name="btnBack"><b><span class="fa fa-long-arrow-left"></span>  Back</b></button>
										<button class="btn btn-outline-dark" name="btnCreate" ><b>Create</b></button>
									</div>
								</div>
							</div>											
						</div>
					</form:form>
				</div>
				
            </div><!-- /.card -->
          </div>

          <!-- /.col-md-6 -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  
  
  
