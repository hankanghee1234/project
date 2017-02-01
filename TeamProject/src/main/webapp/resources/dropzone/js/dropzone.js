/**
 * Created by pox on 2017-01-25.
 */


/*function List() {
                 this.elements = {};
                 this.idx = 0;
                 this.length = 3;
              }
              
              List.prototype.add = function(element) {
                 this.length++;
                 this.elements[this.idx++] = element;
              };
              
              List.prototype.get = function(idx) {
                 return this.elements[idx];
              };
              
              
              
              var list = new List(); 
*/

$(function() {
   var form = $('#my-awesome-dropzone');
   console.log(form);


   Dropzone.options.myAwesomeDropzone = {
      url : '/ppt/upload2',
/*      autoProcessQueue: false,*/
      
 /*     data : cook,*/
      uploadMultiple : true,
      maxFilesize : 5000,
      addRemoveLinks : true,
      dictResponseError : 'Server not Configured',
    /*  acceptedFiles : ".pptx,.pdf,.jpg,.png,.doc,.docx,.odt",*/
    /*  createImageThumbnails: false,*/
      init : function() {
                  
         var self = this;
         self.options.addRemoveLinks = true;
         self.options.dictRemoveFile = "Delete";
                
         self.on("addedfile", function(file) {
           
         });
         
         // Send file starts
         self.on("sending", function(file) {
            console.log('upload started');
            //console.log(file);
         });

         // File upload Progress
         self.on("totaluploadprogress", function(progress) {
            console.log("progress ", progress);
            $('.roller').width(progress + '%');
         });

         self.on("queuecomplete", function(progress) {
            $('.meter').delay(999).slideUp(999);
         });

         // On removing file
         self.on("removedfile", function(file) {
            console.log(file);
         });

      }
   };
});


$('#up').on('click', function(event) {
   $('#my-awesome-dropzone').submit();
});
