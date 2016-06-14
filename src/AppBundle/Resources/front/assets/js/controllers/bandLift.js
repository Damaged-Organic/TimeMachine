"use strict";

import Lift from "../core/lift";
import bandItem from "../templates/bandItem.hbs!";

let el = $("#lift-holder");

class BandLift extends Lift{

    constructor(){
        super(el, {
            url: "/band/lift",
            perRequest: 4
        });

        this.render();
    }
    render(){
        this.listenTo("data:loaded", (data) => {
            let html = bandItem({ participants: data });
            el.append(html);
        });
    }

}

export default BandLift;
