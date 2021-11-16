<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h1>Update Package</h1>
<form:form method="post" action="/my-tour/{id}">
    <table>
        <tr>
            <td>Package Name: </td>
            <td><form:input path="pkg_name"/></td>
        </tr>
        <tr>
            <td>Package Status: </td>
            <td><form:input path="status"/></td>
        </tr>
        <tr>
            <td>Package Info: </td>
            <td><form:input path="pkg_description"/></td>
        </tr>
        <tr>
            <td>Starting Price: </td>
            <td><form:input path="price"/></td>
        </tr>

        <tr>
            <td>Feedback: </td>
            <td><form:input path="feedback"/></td>
        </tr>

        <tr>
            <td></td>
            <td><input type="submit" value="Update"/></td>
        </tr>
    </table>
</form:form>