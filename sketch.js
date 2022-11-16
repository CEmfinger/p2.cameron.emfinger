
let video;
let generalInformation;
let healthInformation;
let clock;

let c;
let canvas  = {w:640, h:480};
let curr_temp;
let curr_short_forecast;
let query_res;
let weatherURL = 'https://api.openweathermap.org/data/2.5/weather?lat=33.5779&lon=-101.8552&appid=d777dfd41d65b5ad7e744c46cf7c4cbc&units=imperial';
var genInfoX, genInfoX;
var healthInfoX, healthInfoY;

function preload(){
    weatherData = loadJSON(weatherURL);
}

function setup() {
    createCanvas(canvas.w, canvas.h);
    centerX = canvas.w/2;
    centerY = canvas.h/2;
    genInfoX = 20, genInfoY = 20;
    healthInfoX = 600, healthInfoY = 20;

    //createCanvas(windowWidth, windowHeight);
    generalInformation = new General(genInfoX, genInfoX, 250, 150, 15, 15, 15, 15, 50, 200, "General Information", 20, 'black');
    healthInformation = new Health(healthInfoX, healthInfoY, 200, 100, 15, 15, 15, 15, 50, 200, "Health Information", 20, 'black');
    

    video = createCapture(VIDEO);
    video.hide();


}

function draw() {
    background(255);
    //Flip Video for "mirror"
    translate(width,0);
    scale(-1.0,1.0);
    image(video, 0,0);

    //Flip everything else back normally 
    translate(width,0);
    scale(-1.0,1.0);

    // Get the current second, minute and hour
    var sec = second();
    var min = minute();
    var hrs = hour();
    // Check for AM or PM 
    var mer = hrs < 12 ? "AM":"PM";
    // Format the time
    sec = formatting(sec);
    min = formatting(min);
    hrs = formatting(hrs % 12);
    fill(0);
    textSize(15);
    textAlign(CENTER, TOP);
    // Display the time
    text(hrs + ":" + min + ":" + sec + " " + mer, width/2, height*0.05);

    generalInformation.display();
    healthInformation.display();

}



function mousePressed() {
    generalInformation.pressed();
    healthInformation.pressed();
}

function mouseReleased() {
    generalInformation.released();
    healthInformation.released();
}

// This function pads the time
function formatting(num){
    if(int(num) < 10) {
      return "0" + num;
    }
    return num;
}

