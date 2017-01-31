/**
 * Created by pox on 2017-01-25.
 */
$(function() {
	var form = $('#my-awesome-dropzone');
	console.log(form);
	Dropzone.options.myAwesomeDropzone = {
		url : '/ppt/upload',
		uploadMultiple : true,
		maxFilesize : 5000,
		addRemoveLinks : true,
		dictResponseError : 'Server not Configured',
		acceptedFiles : "pptx,pdf,jpg,png",
		init : function() {
			var self = this;
			console.log(self);
			// config
			self.options.addRemoveLinks = true;
			self.options.dictRemoveFile = "Delete";
			// New file added
			self.on("addedfile", function(file) {

				console.log('new file added ', file);
				form = $('#my-awesome-dropzone');

				$.ajax({
					type : "POST",
					url : "/ppt/upload",
					data : file,
					contentType : false,
					processData : false,
					error : function(msg) {
						console.log('통신실패!!');
						console.log(msg);
					},
					success : function(data) {
						console.log("통신데이터 값 : " + data);
					}
				}); // file upload 시 url 호출하여 data 출력

			});
			// Send file starts
			self.on("sending", function(file) {
				console.log('upload started', file);
				$('.meter').show();
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