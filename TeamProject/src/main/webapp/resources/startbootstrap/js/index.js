/**
 * index page 스크립트 소스 정재관
 */
$(document)
	.ready(
		function() {
			var msg = '${msg}';
			if (msg == 'registSUCCESS') {
				alert('회원가입에 성공하셨습니다!');
			} else if (msg == 'loginFail') {
				alert('로그인에 실패하였습니다.. 다시로그인해주세요!');
			}

			$.getJSON("/PPT/chatList", function(list) { // 이 안에서 ppt 자료를 JSON data로 입력받아서 호출하는곳
				var chatList = $('#chatList'); 
				$(list).each(function(index, data) {

					chatList.html("<p>" 
							+ data.ppt_title + "  -  <a href=node/chat?" 
							+ data.userid + ">  " + data.userid + "</a></p>");

					console.log(index);
					console.log(data); 
					console.log(data.ppt_title); 
					console.log(data.userid);
				});

			});

			// Presentation List FadeIn
			$("#P-list").click(function(event) {

				$("#P-list").hide();
				$("#presenter").hide();
				$(".list-page").fadeIn("slow");

			});

			// Login
			$(".message a").click(function() {
				$('form').animate({
					height: "toggle",
					opacity: "toggle"
				}, "slow");
			});

			// Login FadeIn
			$("#presenter").click(function(event) {

				$("#P-list").hide();
				$("#presenter").hide();
				$(".login-page").fadeIn("slow");
			});

			// back the home
			$(".back").click(function(event) {
				location.reload();
			});

			// Closes the sidebar menu
			$("#menu-close").click(function(e) {
				e.preventDefault();
				$("#sidebar-wrapper").toggleClass("active");
			});
			// Opens the sidebar menu
			$("#menu-toggle").click(function(e) {
				e.preventDefault();
				$("#sidebar-wrapper").toggleClass("active");
			});
			// Scrolls to the selected menu item on the page
			$(function() {
				$(
						'a[href*=#]:not([href=#],[data-toggle],[data-target],[data-slide])')
					.click(
						function() {
							if (location.pathname.replace(
									/^\//, '') == this.pathname
								.replace(/^\//, '') ||
								location.hostname == this.hostname) {
								var target = $(this.hash);
								target = target.length ? target :
									$('[name=' +
										this.hash
										.slice(1) +
										']');
								if (target.length) {
									$('html,body')
										.animate({
											scrollTop: target
												.offset().top
										}, 1000);
									return false;
								}
							}
						});
			});
			// #to-top button appears after scrolling
			var fixed = false;
			$(document).scroll(function() {
				if ($(this).scrollTop() > 250) {
					if (!fixed) {
						fixed = true;
						// $('#to-top').css({position:'fixed',
						// display:'block'});
						$('#to-top').show("slow", function() {
							$('#to-top').css({
								position: 'fixed',
								display: 'block'
							});
						});
					}
				} else {
					if (fixed) {
						fixed = false;
						$('#to-top').hide("slow", function() {
							$('#to-top').css({
								display: 'none'
							});
						});
					}
				}
			});
			// Disable Google Maps scrolling
			// See http://stackoverflow.com/a/25904582/1607849
			// Disable scroll zooming and bind back the click event
			var onMapMouseleaveHandler = function(event) {
				var that = $(this);
				that.on('click', onMapClickHandler);
				that.off('mouseleave', onMapMouseleaveHandler);
				that.find('iframe').css("pointer-events", "none");
			}
			var onMapClickHandler = function(event) {
				var that = $(this);
				// Disable the click handler until the user leaves the
				// map area
				that.off('click', onMapClickHandler);
				// Enable scrolling zoom
				that.find('iframe').css("pointer-events", "auto");
				// Handle the mouse leave event
				that.on('mouseleave', onMapMouseleaveHandler);
			}
			// Enable map zooming with mouse scroll when the user clicks
			// the map
			$('.map').on('click', onMapClickHandler);

		});