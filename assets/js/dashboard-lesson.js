(function(){
    $.get('http://localhost/r/svr/lessons.php?action=read', function(data){

        var htmlElement = "";
        data.details.forEach(e => {
            htmlElement += `<tr>
                                <td>${e.id}</td>
                                <td>${e.course_id}</td>
                                <td>${e.title}</td>
                                <td>${e.position}</td>
                            </tr>`  
        });

        $('.lessons-body').append(htmlElement);
    });
})();