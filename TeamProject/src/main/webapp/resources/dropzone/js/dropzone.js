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
      maxFiles: 6,
      uploadMultiple : true,
      maxFilesize : 100,
      addRemoveLinks : true,
      dictResponseError : 'Server not Configured',
      
      accept : function(file, done) {
    	  console.log(file);
    	  console.log(file.name);
    	  
    	  
      	 var formData = new FormData();
         
         formData.append("file", file);
    
         
         console.log(formData);
         console.log(formData.values());
    	  
         $.ajax({
				url : "../ppt/upload3", 
				type : "post", 
	
				data : formData,
				dataType : 'text',
				contentType : false,
				processData : false,
				success : function(data) {
					console.log(data);
					
					
					$.ajax({
						url : "../ppt/pdfConverter/", 
						type : "post", 

						data : formData,
						dataType : 'text',
						contentType : false,
						processData : false,
						success : function(data) {
							console.log(data);
							
							$.each(data, function(index, obj){ 
								console.log(obj); 
		                         
		                          $('.ddd').append(
		                       
  '<input id="conver" type="hidden" name="conver" value="'+obj+'" >'
		                              
		                                );
		                          
		                          
		                        }); 
							/*var formData = new FormData();
					         
					         formData.append("file", data);
					    */
							
							//Db로 에이작스 해서 인설트만 해주면 끝 
							//근데  data 안에 들어오는게 1개만 들어옴 그리고 
							//PDFconverter도 지금 한개만 만들어짐 
							/*$.ajax({
								url : "../ppt/pptCreate/", 
								type : "post", 

								data : data,
								dataType : 'text',
								contentType : false,
								processData : false,
								success : function(data) {
									console.log(data);
									
								}
							});*/
						}
					});
				}
			});
 
    	  
    	  
    	  
    	  	  
    	  /*if (file.name == "justinbieber.jpg") {
    	      done("Naha, you don't.");
    	    }
    	    else { done(); 
    	    }*/
    	  
      }
    /*  acceptedFiles : ".pptx,.pdf,.jpg,.png,.doc,.docx,.odt",*/
    /*  createImageThumbnails: false,*/
      /*init : function() {
        
    	  
    	  
         var self = this;
         self.options.addRemoveLinks = true;
         self.options.dictRemoveFile = "Delete";
               
         self.on("addedfile", function(file) {
        	 console.log(file.name);
        	 var str = String (file.name);
        	
        	 
        	 var formData = new FormData();
             
             formData.append("file", file);
        
             
             console.log(formData);
             console.log(formData.values());
            
   
            
        	 
        	 $('#conver').val(file.name);
        	 console.log(str);
        	 
        	 $('#ddd').submit();
        	 $.ajax({
 				url : "../ppt/pdfConverter/", 
 				type : "post", 
 				data : formData,
 				data : str,
 				dataType : 'text',
 				contentType : false,
                processData : false,
 				success : function(data) {
 					console.log(data);
 					
 				}
 			});

         });
         
         // Send file starts
         self.on("sending", function(file) {
            console.log('upload started');
            console.log('하니'+file);
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
   */
	
   };
});


$('#up').on('click', function(event) {
   $('#ddd').submit();
});
