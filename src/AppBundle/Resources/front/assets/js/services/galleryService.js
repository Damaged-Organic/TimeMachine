"use strict";

const REQUEST_URL = "/app_dev.php/gallery/lift";

class GalleryService{

    constructor(params = {}){
        this.params = params;
    }
    getData(params = {}){
        this.params = params;

        return $.ajax({
            url: REQUEST_URL,
            type: "GET",
            data: this.params
        });

    }
}

export default GalleryService;
