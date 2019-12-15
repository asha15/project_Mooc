(function(){
    $.get('http://localhost/r/svr/questions.php?action=read&course=1&lesson=2', function(data){

        var htmlElement = "";
        data.details.forEach(e => {
            htmlElement += `<tr>
                                <td>${e.id}</td>
                                <td>${e.question}</td>
                                <td>${e.lesson_id}</td>
                                <td>${e.title}</td>
                            </tr>`  
        });

        $('.questions-body').append(htmlElement);
    });
})();