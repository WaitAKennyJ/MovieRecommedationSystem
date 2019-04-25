package com.wzj.controller;

import com.wzj.model.Msg;
import com.wzj.model.Ratings;
import com.wzj.model.RatingsKey;
import com.wzj.service.RatingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * Created by kennywzj on 2019/4/24.
 */
@Controller
public class RatingsController {
    @Autowired
    RatingService service;

    @RequestMapping(value = "/Rating/",method = RequestMethod.GET)
    @ResponseBody
    public Msg getRating(@ModelAttribute RatingsKey key){
        Ratings rating = service.getRatings(key);
        return Msg.succuess().add("rating",rating);
    }

    @RequestMapping(value = "/insertRating/",method = RequestMethod.POST)
    @ResponseBody
    public Msg insertRating(@ModelAttribute Ratings rating){
        service.add(rating);
        return Msg.succuess();
    }

    @RequestMapping(value = "/updateRating/",method = RequestMethod.POST)
    @ResponseBody
    public Msg updateRating(@ModelAttribute Ratings rating){
        service.updateRatings(rating);
        return Msg.succuess();
    }
}
