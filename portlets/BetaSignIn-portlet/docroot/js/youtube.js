/**
 * Created by LENOVO on 5/20/2015.
 */
// 2. This code loads the IFrame Player API code asynchronously.
var tag = document.createElement('script');

tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

// 3. This function creates an <iframe> (and YouTube player)
//    after the API code downloads.
var player;
function onYouTubeIframeAPIReady() {
    player = new YT.Player('player', {
        height: '100%',
        width: '100%',
        videoId: '9XsJA4WaZi8',
        playerVars: {
            'autoplay': 1,
            'controls': 0,
            'autohide': 1,
            'wmode': 'opaque',
            'showinfo': 0,
            'enablejsapi':1,

            'loop': 1,
            'mute': 0,
            'start': 162,
            'end': 179,
            'rel':0

        },
        events: {
            'onReady': onPlayerReady,
            //'onPlaybackQualityChange': onPlayerPlaybackQualityChange,
            'onStateChange': onPlayerStateChange//,
            //'onError': onPlayerError
        }

    });
}

// 4. The API will call this function when the video player is ready.
function onPlayerReady(event) {
    event.target.mute();
    //event.target.playVideo();
    event.target.cueVideoById({ videoId: "9XsJA4WaZi8",         // Doesn't work on mobile
        startSeconds: "162",
        endSeconds: "179",
        suggestedQuality: "medium"});
    event.target.playVideo();
}
function onPlayerStateChange(event) {
    switch(event.data) {
        case 0:
            //record('video ended');

            event.target.playVideo();
            event.target.seekTo(162, true);
            break;
        case 1:
            //record('video playing from '+player.getCurrentTime());

            break;
        case 2:
            event.target.playVideo();
        //record('video paused at '+player.getCurrentTime());
    }
}

function onPlayerStateChange1(event) {
    if (event.data == YT.PlayerState.PLAYING && !done) {
        setTimeout(stopVideo, 6000);
        done = true;
    }
}