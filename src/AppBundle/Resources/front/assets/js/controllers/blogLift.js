"use strict";

import Lift from "../core/lift";
import blogItem from "../templates/blogItem.hbs!";

let el = $("#lift-holder");

class BlogLift extends Lift{

    constructor(){
        super(el, {
            url: "/blog/lift",
            perRequest: 3
        });

        this.render();
    }
    render(){
        this.listenTo("data:loaded", (data) => {
            let html = blogItem({ posts: data });
            el.append(html);
        });
    }

}

export default BlogLift;
