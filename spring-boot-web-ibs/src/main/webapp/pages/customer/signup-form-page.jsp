<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
	<head>
		<title>Customer Signup</title>
		</head>
	<body>
		<jsp:include page="/header" />
		<section class="container-fluid p-4">
			

			<div class="col-sm-5">						
			<form:form
				action="/customer/add"
				method="POST"
				modelAttribute="customer"
				class="form"
				>
				<div class="form-control-group">
					<form:errors path="*"></form:errors>
				</div>
				
				<div class="form-control-group">
					<form:label path="IbsUser.userId" class="form-control-label">User Id</form:label>
					<form:input path="IbsUser.userId" class="form-control" type="number"/>
				</div>
				<div class="form-control-group">
					<form:label path="IbsUser.userName" class="form-control-label">User Name</form:label>
					<form:input path="IbsUser.userName" class="form-control" type="number"/>
				</div>
				<div class="form-control-group">
					<form:label path="IbsUser.role" class="form-control-label">Role</form:label>
					<form:input path="IbsUser.role" class="form-control" type="text"/>
				</div>
				<div class="form-control-group">
					<form:label path="IbsUser.password" class="form-control-label">Password</form:label>
					<form:input path="IbsUser.password" class="form-control" type="text"/>
				</div>
				<div class="form-control-group">
					<form:label path="address" class="form-control-label">Address</form:label>
					<form:input path="address" class="form-control" type="text"/>
				</div>
				<div class="form-control-group">
					<form:label path="customerName" class="form-control-label">Full Name</form:label>
					<form:input path="customerName" class="form-control"/>
				</div>
				<div class="form-control-group">
					<form:label path="dateOfBirth" class="form-control-label">Date of Birth</form:label>
					<form:input path="dateOfBirth" class="form-control"/>
				</div>
				<div class="form-control-group">
					<form:label path="phoneNumber" class="form-control-label">Phone Number</form:label>
					<form:input path="phoneNumber" class="form-control"/>
				</div>
				<div class="form-control-group">
					<form:label path="emailId" class="form-control-label">Email ID</form:label>
					<form:input path="emailId" class="form-control"/>
				</div>
				<!-- <div class="form-control-group">
					<form:label path="adbGroup.groupId" class="form-control-label">Group</form:label>
					<form:select path="adbGroup.groupId" class="form-control">
						<form:options items="${groups}" itemLabel="groupTitle" itemValue="groupId"/>
					</form:select> 
				</div>
				<div class="form-control-group">
					<form:label path="contactDetails.addressLine1" class="form-control-label">
						Address Line1
					</form:label>
					<form:input path="contactDetails.addressLine1" class="form-control"/>
				</div>
				<div class="form-control-group">
					<form:label path="contactDetails.addressLine2" class="form-control-label">
						Address Line2
					</form:label>
					<form:input path="contactDetails.addressLine2" class="form-control"/>
				</div>
				<div class="form-control-group">
					<form:label path="contactDetails.city" class="form-control-label">
						City
					</form:label>
					<form:input path="contactDetails.city" class="form-control"/>
				</div>
				<div class="form-control-group">
					<form:label path="contactDetails.state" class="form-control-label">
						State
					</form:label>
					<form:input path="contactDetails.state" class="form-control"/>
				</div>
				<div class="form-control-group">
					<form:label path="contactDetails.mobileNumber" class="form-control-label">
						Mobile Number
					</form:label>
					<form:input path="contactDetails.mobileNumber" class="form-control"/>
				</div>
				<div class="form-control-group">
					<form:label path="contactDetails.emailId" class="form-control-label">
						Email Id
					</form:label>
					<form:input path="contactDetails.emailId" class="form-control"/>
				</div>-->
				<div class="form-control-group">
					<button class="btn btn-primary">SAVE</button>
				</div>
			</form:form>
			</div>
		</section>
	</body>
</html>