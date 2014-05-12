<c:if test="${not isLight}">
    <script>
        document.getElementById("body").style.backgroundColor="#666362";
        var labels=document.getElementsByTagName("label");
        for (var index = 0; index < labels.length; ++index) {
            labels[index].style.color="#FFFFFF";
        }
    </script>
</c:if>
</body>
<html>
