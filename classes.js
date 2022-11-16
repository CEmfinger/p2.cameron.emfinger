class General{
    constructor(x, y, width, height, tl, tr, br, bl, rectOpacity, rectColor, text, textSize, textColor,) {
        this.x = x;
        this.y = y;
        this.width = width;
        this.height = height;
        this.tl = tl;
        this.tr = tr;
        this.br = br;
        this.bl = bl;
        this.rectOpacity = rectOpacity;
        this.rectColor = rectColor;
        this.text = text;
        this.textSize = textSize;
        this.textColor = textColor;
    }

    display(){
        this.over();
        this.update();

        scale(0.8,0.8);
        this.is_over ? fill(this.rectColor/2, this.rectOpacity/2): fill(this.rectColor/2, this.rectOpacity/2);
        rect(this.x, this.y, this.width*0.8, this.height*0.2, this.tl, this.tr*0, this.br, this.bl*0,);
        line(this.x, this.y+30, this.x, this.y+400)

        fill(this.textColor);
        textSize(this.textSize);
        textAlign(LEFT, TOP);
        text(this.text, this.x + ((this.width*0.1)/2), this.y + ((this.height*0.1)/2));

        text('Lubbock Weather',this.x+10, this.y+40);
        line(this.x, this.y+60, this.x+200, this.y+60)
        text('Temp: ' + weatherData.main.temp + 'F' , this.x+10, this.y+65);
        text('Wind Speed: ' + weatherData.wind.speed +'mph', this.x+10, this.y+90);
        text('Description: Clear Sky', this.x+10, this.y+115);

        text('Upcomming Events',this.x+10, this.y+150);
        line(this.x, this.y+170, this.x+200, this.y+170)
        text('Meeting at: 2:00pm' , this.x+10, this.y+175);

        text('Notifications',this.x+10, this.y+210);
        line(this.x, this.y+230, this.x+200, this.y+230)
        text('Text Message from: Dang' , this.x+10, this.y+235);
        text('New Tweet from: Elon' , this.x+10, this.y+260);

        text('Top News',this.x+10, this.y+295);
        line(this.x, this.y+315, this.x+200, this.y+315)
        text('Ukraine revels in -', this.x+10, this.y+320);
        text('Russian retreat' , this.x+10, this.y+345);
    

    }

    update() {
        if (this.drag) {
            this.x = mouseX + this.offsetX;
            this.y = mouseY + this.offsetY;
        }
    }

    over(){
        if( mouseX >= this.x && mouseX <= this.x + this.width && mouseY >= this.y && mouseY <= this.y + this.height){
            this.is_over = true;
        }
        else this.is_over = false;
    }


    pressed() {
        if (mouseX > this.x && mouseX < this.x + this.width && mouseY > this.y && mouseY < this.y + this.height) {
            this.drag = true;
            this.offsetX = this.x - mouseX;
            this.offsetY = this.y - mouseY;
        }
    }

    released(){
        this.drag = false;
    }

}


class Health{
    constructor(x, y, width, height, tl, tr, br, bl, rectOpacity, rectColor, text, textSize, textColor,) {
        this.x = x;
        this.y = y;
        this.width = width;
        this.height = height;
        this.tl = tl;
        this.tr = tr;
        this.br = br;
        this.bl = bl;
        this.rectOpacity = rectOpacity;
        this.rectColor = rectColor;
        this.text = text;
        this.textSize = textSize;
        this.textColor = textColor;
    }

    display(){
        this.over();
        this.update();

        // this.is_over ? fill(this.rectColor/2, this.rectOpacity/2): fill(this.rectColor, this.rectOpacity);
        // rect(this.x, this.y, this.width, this.height, this.tl, this.tr, this.br, this.bl,);

        this.is_over ? fill(this.rectColor/2, this.rectOpacity/2): fill(this.rectColor/2, this.rectOpacity/2);
        rect(this.x, this.y, this.width*0.9, this.height*0.3, this.tl*0, this.tr, this.br*0, this.bl,);
        line(this.x+180, this.y+30, this.x+180, this.y+150)
    
        fill(this.textColor);
        textSize(this.textSize);
        textAlign(RIGHT, TOP);
        text(this.text, this.x + ((this.width*0.85)), this.y + ((this.height*0.1)/2));
        
        text('Weight: 127',this.x+170, this.y+40);
        text('Slept: 7.3hrs',this.x+170, this.y+65);
        text('Mirror Time: 10min',this.x+170, this.y+90);
        text('Exercise: Gym at 7am',this.x+170, this.y+115);

    }

    update() {
        if (this.drag) {
            this.x = mouseX + this.offsetX;
            this.y = mouseY + this.offsetY;
        }
    }

    over(){
        if( mouseX >= this.x && mouseX <= this.x + this.width && mouseY >= this.y && mouseY <= this.y + this.height){
            this.is_over = true;
        }
        else this.is_over = false;
    }


    pressed() {
        if (mouseX > this.x && mouseX < this.x + this.width && mouseY > this.y && mouseY < this.y + this.height) {
            this.drag = true;
            this.offsetX = this.x - mouseX;
            this.offsetY = this.y - mouseY;
        }
    }

    released(){
        this.drag = false;
    }

}




