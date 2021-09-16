<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
 <div class="content-wrapper">
    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row justify-content-center">
          <div class="col-sm-4" style="margin-top:100px">
            <div class="card">
            
				<div class="card-header bg-dark" >
					<div class="row">
						<div class="col text-center">
							<h4 style="font-size: 21px; font-weight: bold;">SERVICE</h4>
						</div>					
					</div>
				</div>
				
				<div class="card-body">
					<form action="abc.com/client" method="post">
						<div class="form-group row" >
							<label class="col-sm-4 col-form-label">Client Number</label>
							<div class="col-sm-7">		
							      <div class="input-group">
								        <input name="finding" type="text" class="form-control" id="myText" />
								        <div class="input-group-prepend">
										      <div class="input-group-text " >
									            	num
									          </div>
									    </div>
							      </div>
							      <c:if test="${not empty findMess }">
										<div class="mt-1 ml-1" style="font-size:16px;color:brown"><i>${findMess}</i></div>
									</c:if>
							</div>
						</div>
						<hr />
						<div class="form-group">
							<label for="">Actions</label>
							<div class="form-check">
								<input type="radio" name="actions" class="form-check-input" value="a" checked/>
								<label for="" class="form-check-label">Create Client</label>
							</div>
							<div class="form-check">
								<input type="radio" name="actions" class="form-check-input" value="b" />
								<label for="" class="form-check-label">Modify Client</label>
							</div>
							<div class="form-check">
								<input type="radio" name="actions" class="form-check-input" value="c" />
								<label for="" class="form-check-label">Inquire Client</label>
							</div>
						</div>
						<hr />
						<button class="btn col btn-dark mt-2">Action</button>
						
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