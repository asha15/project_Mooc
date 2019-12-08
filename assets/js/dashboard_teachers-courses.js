(function(){
    $.get('http://localhost/Mooc/svr/course.php?action=read', function(data){

        var htmlElement = "";
        data.details.forEach(e => {
            htmlElement += `<tr>
                                <td>${e.course_id}</td>
                                <td>${e.title}</td>
                                <td>${e.description}</td>
                                <td>${e.course_image}</td>
                            </tr>`  
        });

        $('.courses-body').append(htmlElement);
    });
})();