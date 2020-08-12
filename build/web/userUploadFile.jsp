<%-- 
    Document   : userUploadFile
    Created on : 23 Jul, 2020, 8:28:24 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upload File</title>
        <link rel="stylesheet" href="./css/bootstrap.css">
        <link rel="stylesheet" href="./css/font-awesome.css">
        <style>
            #one
            {
                margin-top:50px;
                box-shadow: 0px 0px 5px 2px rgba(0,0,0,0.2);
            }
            .it .btn-orange
            {
                background-color: transparent;
                border-color: #777!important;
                color: #777;
                text-align: left;
                width:100%;
            }
            .it input.form-control
            {
                height: 54px;
                border:none;
                margin-bottom:0px;
                border-radius: 0px;
                border-bottom: 1px solid #ddd;
                box-shadow: none;
            }
            .it .form-control:focus
            {
                border-color: #ff4d0d;
                box-shadow: none;
                outline: none;
            }
            .fileUpload {
                position: relative;
                overflow: hidden;
                margin: 10px;
            }
            .fileUpload input.upload {
                position: absolute;
                top: 0;
                right: 0;
                margin: 0;
                padding: 0;
                font-size: 20px;
                cursor: pointer;
                opacity: 0;
                filter: alpha(opacity=0);
            }
            .it .btn-new, .it .btn-next
            {
                margin: 30px 0px;
                border-radius: 0px;
                background-color: #333;
                color: #f5f5f5;
                font-size: 16px;
                width: 155px;
            }
            .it .btn-next
            {
                background-color: #ff4d0d;
                color: #fff;
            }
            .it .btn-check
            {
                cursor:pointer;
                line-height:54px;
                color:red;
            }
            .it .uploadDoc
            {
                margin-bottom: 20px;
            }
            .it .uploadDoc
            {
                margin-bottom: 20px;
            }
            .it .btn-orange img {
                width: 30px;
            }
            p
            {
                font-size:16px;
                text-align:center;
                margin:30px 0px;
            }
            .it #uploader .docErr
            {
                position: absolute;
                right:auto;
                left: 10px;
                top: -56px;
                padding: 10px;
                font-size: 15px;
                background-color: #fff;
                color: red;
                box-shadow: 0px 0px 7px 2px rgba(0,0,0,0.2);
                display: none;
            }
            .it #uploader .docErr:after
            {
                content: '\f0d7';
                display: inline-block;
                font-family: FontAwesome;
                font-size: 50px;
                color: #fff;
                position: absolute;
                left: 30px;
                bottom: -40px;
                text-shadow: 0px 3px 6px rgba(0,0,0,0.2);
            }
        </style>
        <link rel="stylesheet" type="text/css" href="./css/fileVault.css">
        
    </head>
    <body>
        <header>
            <a href="redirect.jsp"><img src="./img/logout.png" alt="Pineapple" style="width:50px;height:50px; float:right;"></a>
            <a href="userMain.jsp"><img src="./img/home.jpg" alt="Pineapple" style="width:50px;height:50px; float:left;"></a>
            <h2>File Vault</h2>
        </header>
<div class="container">
<div class="row it">
<div class="col-sm-offset-1 col-sm-10" id="one">
<p>
Please upload documents.
</p><br>
<div class="row">
  <div class="col-sm-offset-4 col-sm-4 form-group">
    <h3 class="text-center">My Documents</h3>
  </div><!--form-group  https://codepen.io/shubhamc_007/pen/GWvZGN-->
</div><!--row-->
<form method="post" action="uploadfile"
      enctype="multipart/form-data">
<div id="uploader">
<div class="row uploadDoc">
  <div class="col-sm-3">
      <div class="docErr">Please upload valid file</div><!--error-->
    <div class="fileUpload btn btn-orange">
      <img src="./svgFile/136549.svg" class="icon">
      <span class="upl" id="upload">Upload document</span>
      <input type="file" name="file" class="upload up" id="up" onchange="readURL(this);" />
    </div><!-- btn-orange -->
  </div><!-- col-3 -->
  <div class="col-sm-8">
    <input type="text" class="form-control" id="file_Desc" name="file_Desc" placeholder="Note">
  </div><!--col-8-->
  <div class="col-sm-1"><a class="btn-check"><i class="fa fa-times"></i></a></div><!-- col-1 -->
</div><!--row-->
</div><!--uploader-->
<div class="text-center">
<a class="btn btn-new"><i class="fa fa-plus"></i> Add new</a>
<!--<a class="btn btn-next"><i class="fa fa-paper-plane"></i> Submit</a>-->
<button class="btn btn-next" type="submit"><i class="fa fa-paper-plane"></i> Submit</button>
</form>
</div>
</div><!--one-->
</div><!-- row -->
</div><!-- container -->


<script src="./JavaScript/jquery.js"></script>
<script src="./JavaScript/bootstrap.js"></script>
<script id="rendered-js">
var fileTypes = ['pdf', 'docx', 'rtf', 'jpg', 'jpeg', 'png', 'txt']; //acceptable file types
function readURL(input) {
  if (input.files && input.files[0]) {
    var extension = input.files[0].name.split('.').pop().toLowerCase(), //file extension from input file
    isSuccess = fileTypes.indexOf(extension) > -1; //is extension in acceptable types

    if (isSuccess) {//yes
      var reader = new FileReader();
      reader.onload = function (e) {
        if (extension == 'pdf') {
          $(input).closest('.fileUpload').find(".icon").attr('src', './svgFile/179483.svg');
        } else
        if (extension == 'docx') {
          $(input).closest('.fileUpload').find(".icon").attr('src', './svgFile/281760.svg');
        } else
        if (extension == 'rtf') {
          $(input).closest('.fileUpload').find(".icon").attr('src', './svgFile/136539.svg');
        } else
        if (extension == 'png') {$(input).closest('.fileUpload').find(".icon").attr('src', './svgFile/136523.svg');
        } else
        if (extension == 'jpg' || extension == 'jpeg') {
          $(input).closest('.fileUpload').find(".icon").attr('src', './svgFile/136524.svg');
        } else
        if (extension == 'txt') {
          $(input).closest('.fileUpload').find(".icon").attr('src', './svgFile/136538.svg');
        } else
        {
          //console.log('here=>'+$(input).closest('.uploadDoc').length);
          $(input).closest('.uploadDoc').find(".docErr").slideUp('slow');
        }
      };

      reader.readAsDataURL(input.files[0]);
    } else
    {
      //console.log('here=>'+$(input).closest('.uploadDoc').find(".docErr").length);
      $(input).closest('.uploadDoc').find(".docErr").fadeIn();
      setTimeout(function () {
        $('.docErr').fadeOut('slow');
      }, 9000);
    }
  }
}
$(document).ready(function () {

  $(document).on('change', '.up', function () {
    var id = $(this).attr('id'); /* gets the filepath and filename from the input */
    var profilePicValue = $(this).val();
    var fileNameStart = profilePicValue.lastIndexOf('\\'); /* finds the end of the filepath */
    profilePicValue = profilePicValue.substr(fileNameStart + 1).substring(0, 20); /* isolates the filename */
    //var profilePicLabelText = $(".upl"); /* finds the label text */
    if (profilePicValue != '') {
      //console.log($(this).closest('.fileUpload').find('.upl').length);
      $(this).closest('.fileUpload').find('.upl').html(profilePicValue); /* changes the label text */
    }
  });

  $(".btn-new").on('click', function () {
    $("#uploader").append('<div class="row uploadDoc"><div class="col-sm-3"><div class="docErr">Please upload valid file</div><!--error--><div class="fileUpload btn btn-orange"> <img src="./svgFile/136549.svg" class="icon"><span class="upl" id="upload">Upload document</span><input type="file" class="upload up" id="up" onchange="readURL(this);" /></div></div><div class="col-sm-8"><input type="text" class="form-control" name="" placeholder="Note"></div><div class="col-sm-1"><a class="btn-check"><i class="fa fa-times"></i></a></div></div>');
  });

  $(document).on("click", "a.btn-check", function () {
    if ($(".uploadDoc").length > 1) {
      $(this).closest(".uploadDoc").remove();
    } else {
      alert("You have to upload at least one document.");
    }
  });
});
//# sourceURL=pen.js
    </script>
</body>
</html>
