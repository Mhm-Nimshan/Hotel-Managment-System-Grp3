<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Read Customers</h1>
    <table border="2" width="70%" cellpadding="2">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Password</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="customer" items="${customers}">
            <tr>
                <td>${customer.id}</td>
                <td>${customer.name}</td>
                <td>${customer.email}</td>
                <td>${customer.password}</td>
                <td><a href="/update-customer/${customer.id}">Update</a></td>
                <td><a href="/delete-customer/${customer.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
<br/>
<a href="/create-customer">Create Customer</a>