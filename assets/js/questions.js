(function(){
    $.get('http://localhost/r/svr/questions.php?action=read', function(data){

        var htmlElement = "";
        data.details.forEach(e => {
            htmlElement += `<tr>
                                <td>${e.id}</td>
                                <td>${e.course_id}</td>
                                <td>${e.lesson_id}</td>
                                <td>${e.question_id}</td>
                                <td>${e.question}</td>
                                <td>${e.option_text}</td>
                                <td>${e.correct}</td>
                            </tr>`  
        });

        $('.question-body').append(htmlElement);
    });
})();