


navigator.getUserMedia ||
      (navigator.getUserMedia = navigator.mozGetUserMedia ||
      navigator.webkitGetUserMedia || navigator.msGetUserMedia);


window.audioContext ||
            (window.audioContext = window.webkitAudioContext);
     


function onSuccess(stream) {
	var video = document.getElementById('webcam');
	var videoSource, audioContext, mediaStreamSource;

	if (video) {
		if (window.webkitURL) {
		  videoSource = window.webkitURL.createObjectURL(stream);
		} else {
		  videoSource = stream;
		}

		video.autoplay = true;
		video.src = videoSource;
	}

  if (audio && window.audioContext) {
      audioContext = new window.audioContext();
      mediaStreamSource = audioContext.createMediaStreamSource(stream);
      mediaStreamSource.connect(audioContext.destination);
  }
 }
     
function onError() {
  alert('There has been a problem retreiving the streams - are you running on file:/// or did you disallow access?');
}
     
function requestStreams(getVideo, getAudio) {
  if (navigator.getUserMedia) {
    navigator.getUserMedia({
      video: getVideo,
      audio: getAudio
    }, onSuccess, onError);
  } else {
      alert('getUserMedia is not supported in this browser.');
  }
}


function takePhoto() {
  var photo = document.getElementById('photo'),
      context = photo.getContext('2d'),
      video = document.getElementById('webcam');

  photo.width = video.clientWidth;
  photo.height = video.clientHeight;

  context.drawImage(video, 0, 0, photo.width, photo.height);
}

function recordVideo() {
  var options = {
     type: 'video',
     video: {
        width: 320,
        height: 240
     },
     canvas: {
        width: 320,
        height: 240
     }
  };
  var recordRTC = RecordRTC(mediaStream, options);
  recordRTC.startRecording();
  recordRTC.stopRecording(function(videoURL) {
     mediaElement.src = videoURL;
  });
}
   
(function init() {
    requestStreams(true, true);
}());


var photoButton = document.getElementById('takePhoto');
photoButton.addEventListener('click', takePhoto, false);

