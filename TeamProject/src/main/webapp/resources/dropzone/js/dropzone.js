
	function List() {
		
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
              
	$(function() {
	   var form = $('#my-awesome-dropzone');
	   console.log(form);
	
	
	   Dropzone.options.myAwesomeDropzone = {
	      url : '/ppt/upload2',
	      maxFiles: 6,
	      uploadMultiple : false,
	      maxFilesize : 100,
	      addRemoveLinks : true,
	      dictResponseError : 'Server not Configured',
	      acceptedFiles : ".pptx,.pdf",
	    
	      accept : function(file, done) {
	         console.log(file);
	         console.log(file.name);
	         
	         var formData = new FormData();
	         
	         formData.append("file", file);
	    
	         
	         console.log(formData);
	         console.log(formData.values());
	         
	         $('.kinds').empty();
	         $('.dz-details').append('<div class="kinds">'+
	        		 '<input id="ppt_kind" type="hidden" name="ppt_kind" value="ppt_kind">'+
	        		 '<input id="ppt_desc" type="hidden" name="ppt_desc" value="ppt_desc">'+
	        		 '<input id="ppt_title" type="hidden" name="ppt_title" value="ppt_title"></div>');
	
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
	                     console.log(data[7]);
	                     var list = new List(); 
	                     
	                     list.add(data);
	                     console.log(list.elements[0]);
	                     var slices = list.elements[0].slice("1","-1");
	                     console.log(slices);
	                     
	                     var splits = slices.split(",");
	                     console.log(splits);
	                
	                     var  splits1 = new Array();
	                     for(var i=0; i<splits.length; i++){
	                        console.log("스플릿 시작?");
	                        splits1.push(splits[i].slice("1","-1"));
	                        
	                        
	                     }
	                     console.log(splits1);
	                   
	                     var abc = $('#userid').val();
	                    
	                       for(var m=0; m<splits1.length;m++){
	                          console.log("스플릿1 시작?");
	                          $('#ddd').append('<input class="img" type="hidden" name="img" value="'+splits1[m]+'" >');
	    
	                       }
	                      
	                     console.log("완료?");
	   
	                  }
	               });
	            }
	         });
	  
	      }
	  
	   };
	});

	$('#up').on('click', function(event) {
		
		$('#ddd').submit();
			     
	});