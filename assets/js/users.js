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

function addUser(){
    var name = $("input#username").val();   
    var email = $("input#email").val();   
    var password = $("input#psw").val(); 
    var role = $("input#role").val(); 
   
    var role_id = '';

    if(role == 'student'){
        role_id = '3';
    }else if(role == 'teacher'){
        role_id = '2';
    }else{
        role_id = '1';
    }

    var dataArray = {
      "name":name,
      "email":email,
      "pass":password,
      "role":role_id
    };

    jQuery.ajax({
      type: "POST",
      url: "http://localhost/r/svr/user.php?action=add&",
      data: {u_data : dataArray},
    //   cache: false,
    //   success: function(svr_resp){
    //     if(svr_resp == '1'){
    //       alert("Data successfully captured on the server.");
    //       //you may do more things here, depending on your needs...
    //     } else {
    //       alert("Error: Data not captured on the server.");
    //       //you may do more things here, depending on your needs...
    //     }
    //   }
    });
  }