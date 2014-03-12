<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
    </head>
    <body>
    <center>
        <h2>  |<a target="_blank" href="http://kodlamasi.tk"> Kodlamasi.tk</a> | Spring MVC MongoDB Maven Uygulama </h2>

        <form name="addperson" action="person/save" method="post" id="addperson">
            <table>
                <tr>
                <input type="hidden" name="personid"/>
                <td><label for="name">Ad</label></td>
                <td><input type="text" id="name" name="name"/></td>
                </tr>
                <tr>
                    <td><label for="name">Soyad</label></td>
                    <td><input type="text" id="name" name="lastname"/></td>
                </tr>
                <tr>
                    <td><label for="name">Telefon No</label></td>
                    <td><input type="text" id="name" name="phone"/></td>
                </tr>
                <tr>
                    <td><label for="name">E-Mail</label></td>
                    <td><input type="text" id="name" name="email"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Kaydet"/></td>
                </tr>
            </table>
        </form>

        <table border="1">
            <tr>
            <b><td>Ad</td>
                <td>Soyad</td>
                <td>Telefon No.</td>
                <td>E-Mail</td>
                <td>Sil / Kopyala</td>
            </b>
            </tr>
            <c:forEach var="person" items="${personList}">

                <tr>
                    <td>${person.name}</td>
                    <td>${person.lastname}</td>
                    <td>${person.phone}</td>
                    <td>${person.email}</td>

                    <td><input type="button" value="Sil" id="deleteBtn" onclick="window.location = 'person/delete?id=${person.id}'"/>
                        <input type="button" value="Kopyala" id="editBtn" onclick="window.location = 'person/merge?name=${person.name}'"/></td>

                </tr>
            </c:forEach>
        </table>
    </center>
</body>
</html>