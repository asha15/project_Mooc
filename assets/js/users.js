(function(){
    $.get('http://localhost/Mooc/svr/user.php?action=read', function(data){

        var htmlElement = "";
        data.details.forEach(e => {
            htmlElement += `<tr>
                                <td>${e.id}</td>
                                <td>${e.name}</td>
                                <td>${e.email}</td>
                                <td>${e.email}</td>
                            </tr>`  
        });

        $('.users-table-body').append(htmlElement);
    });
})();