<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<div class="content-wrapper">
    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row justify-content-center">
          <div class="col-sm-5 mb-5" style="margin-top:55px">
            <div class="card">
            
				<div class="card-header bg-dark" >
					<div class="row">
						<div class="col text-center">
							<h4 style="font-size: 21px; font-weight: bold;">INQUERY ACTION</h4>
						</div>					
					</div>
				</div>
				
				<div class="card-body">
					<form action="abc.com/inquire" method="post">
						<div class="row">
							<div class="col-sm-6 ml-5">
								<div class="form-group">
	                                <label>Client Number</label>
	                                <div style="color:brown;font-size:18px"><b>${client.clientnumber }</b></div>
	                            </div>
							</div>
							
							<div class="col-sm-4">
								<div class="form-group">
	                                <label>Identity Number</label>
	                                 <div style="color:brown;font-size:18px"><b>${client.identitynumber }</b></div>
	                            </div>
							</div>
						</div>
						
						<div class="row mt-1">
							<div class="col-sm-6 ml-5">
								<div class="form-group">
	                                <label>First Name</label>
	                                <div style="color:brown;font-size:18px"><b>${client.firstname}</b></div>
	                            </div>
							</div>
							
							<div class="col-sm-4">
								<div class="form-group">
	                                <label>Last Name</label>
	                               	<div style="color:brown;font-size:18px"><b>${client.lastname }</b></div>
	                            </div>
							</div>
						</div>
						
						<div class="row mt-1">
							<div class="col-sm-6 ml-5">
								<div class="form-group">
	                                <label>Gender</label>
	                                <div style="color:brown;font-size:18px"><b>${client.gender.value }</b></div>         
	                            </div>
							</div>
							
							<div class="col-sm-4">
								<div class="form-group">
	                                <label>Date of Birth</label>
	                                <div style="color:brown;font-size:18px"><b><fmt:formatDate pattern = "dd-MM-yyyy"  value="${client.dob}" /></b></div>                 
	                            </div>
							</div>
						</div>
						
						<div class="row mt-1">
							<div class="col-sm-6 ml-5">
								<div class="form-group">
	                                <label>Marital Status</label>
	                                <div style="color:brown;font-size:18px"><b>${client.maritalstatus.value }</b></div>    
	                            </div>
							</div>
							
							<div class="col-sm-4">
								<div class="form-group">
	                                <label>Country</label>
	                                <div style="color:brown;font-size:18px"><b>${client.country.value }</b></div>               
	                            </div>
							</div>
						</div>
						
						<div class="row mt-1">
							<div class="col-sm-10 ml-5" style="padding-right:30px">
								<div class="form-group">
	                                <label>Address</label>
	                                <div style="color:brown;font-size:18px"><b>${client.address }</b></div>                                    
	                            </div>
							</div>
						</div>
						
						<hr />
						
						<div class="row justify-content-center">
								<button class="btn btn-outline-dark col-sm-4" name="btnBack"><b><span class="fa fa-long-arrow-left"></span>  Back</b></button>										
						</div>
					</form>
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
  
  
  
