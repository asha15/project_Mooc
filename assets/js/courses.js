(function(){
    $.get('http://localhost/r/svr/course.php?action=read', function(data){

        var htmlElement = "";
        data.details.forEach(e => {
            htmlElement += `<div class="col-md-4">
                                <div class="info-icon">
                                        <div class="avatar avatar-danger">
                                            <img alt="..." class="img-circle" src="${e.teachers_image}"/>
                                        </div>
                                    <h3>courses</h3>
                                    <a class="btn btn-grey btn-fill btn-lg " data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();" >${e.title}</a>
                                    <p class="description">${e.description}</p>
                                </div>
                            </div>`  
        });

        $('.courses').append(htmlElement);
    });
})();