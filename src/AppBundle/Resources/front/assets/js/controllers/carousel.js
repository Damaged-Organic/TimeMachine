"use strict";

const KEY_LEFT = 37;
const KEY_RIGHT = 39;

let carouselHolder = $("#carousel-holder");

let photoListHolder = $("#photo-list-holder");
let photoList = photoListHolder.find(".photo-item");
let photoCount = photoList.length;

let photoView = $("#photo-view-container");
let photoInfo = $("#photo-info-container");
let currentNum = $("#current-num");

class Carousel{

    constructor(){
        this.current = 0;

        this._events();
    }
    _events(){
        photoListHolder.on("click", ".photo-item", (e) => { this._handlePhoto(e) });

        carouselHolder.on("click", ".arrow", (e) => { this._handleArrow(e) })
                      .on("click", ".close", (e) => { this._handleClose(e) });

        $(document).on("keyup", (e) => { this._handleKeyUp(e) });
    }
    _handlePhoto(e){
        e.preventDefault();
        let target = $(e.currentTarget);

        this.current = target.index();

        let photoData = this.getPhotoData();

        this.render(photoData);

        return false;
    }
    _handleArrow(e){
        e.preventDefault();
        let target = $(e.currentTarget);
        let direction = target.hasClass("left") ? "left" : "right";

        this.updateCurrentBasedOnDirection(direction);
        this.checkBoundaries();

        let photoData = this.getPhotoData();

        this.render(photoData);

        return false;
    }
    _handleKeyUp(e){
        if(e.keyCode !== KEY_LEFT && e.keyCode !== KEY_RIGHT) return;
        let direction = e.keyCode === KEY_LEFT ? "left" : "right";

        this.updateCurrentBasedOnDirection(direction);
        this.checkBoundaries();

        let photoData = this.getPhotoData();

        this.render(photoData);

        return false;
    }
    _handleClose(e){
        carouselHolder.removeClass("active");

        return false;
    }
    updateCurrentBasedOnDirection(direction){
        (direction === "left") ? this.current-- : this.current++;
    }
    checkBoundaries(){
        if(this.current < 0) this.current = photoCount - 1;
        if(this.current > photoCount - 1) this.current = 0;
    }
    getPhotoData(){
        let photo = photoList.eq(this.current);

        return {
            originalUrl: photo.data("original"),
            description: photo.data("desc")
        }
    }
    _preloadPhoto(url, cb){
        let image = new Image();

        image.onload = () => cb(image);
        image.src = url;
    }
    _recognizeOrientation(img){
        let width = img.naturalWidth || img.width;
        let height = img.naturalHeight || img.height;

        return (width > height) ? "landscape" : "portrait";
    }
    render(photoData){
        this._preloadPhoto(photoData.originalUrl, (img) => {
            let orientation = this._recognizeOrientation(img);

            carouselHolder.addClass("active");
            photoView
                .removeClass("landscape portrait")
                .addClass(orientation);

            photoView.html(img);

            photoInfo.html(`
                <span class="upper-title">${ this.current + 1 } / ${ photoCount }</span>
                <span class="underline"></span>
                <p>${ photoData.description }</p>
            `);
        });
    }
}

export default Carousel;
