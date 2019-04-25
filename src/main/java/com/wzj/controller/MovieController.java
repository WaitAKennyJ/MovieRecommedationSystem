package com.wzj.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wzj.model.Admin;
import com.wzj.model.Movie;
import com.wzj.model.Msg;
import com.wzj.service.MovieService;
import org.apache.mahout.cf.taste.common.TasteException;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by kennywzj on 2019/4/20.
 */
@Controller
public class MovieController {
    @Autowired
    MovieService movieService;


    @RequestMapping(value = "/MovieItem/{movieID}")
    public String MovieItem(@PathVariable(value = "movieID")Integer movieID,Model model){
        model.addAttribute("movieID",movieID);
        return "MovieItem";
    }


    @RequestMapping(value = "/MovieInfo")
    @ResponseBody
    public Msg AdminAllMovie(@RequestParam(value = "page",defaultValue = "1")int page){

//        引入分页插件,传入页码以及每页大小
        PageHelper.startPage(page,10);
        List<Movie> movieList = movieService.getAll();
//        使用PageInfo包装,连续显示10页
        PageInfo pageInfo = new PageInfo(movieList,5);
//        model.addAttribute("MovieInfo",pageInfo);
        return Msg.succuess().add("pageInfo",pageInfo);

    }

    @RequestMapping(value = "/Movie",method = RequestMethod.POST)
    @ResponseBody
    public Msg AddMovie(Movie movie){
        movieService.add(movie);
        return Msg.succuess();

    }

    @RequestMapping(value = "/Movie/{movieID}",method = RequestMethod.GET)
    @ResponseBody
    public Msg getMovie(@PathVariable("movieID") Integer movieID){
        Movie movie = movieService.getMovie(movieID);
        return Msg.succuess().add("movie",movie);
    }

    @RequestMapping(value = "/Movie/{movieID}",method = RequestMethod.PUT)
    @ResponseBody
    public Msg updateMovie(Movie movie){
        movieService.updateMovie(movie);
        return Msg.succuess().add("moive",movie);
    }

    @RequestMapping(value = "/Movie/{movieID}",method = RequestMethod.DELETE)
    @ResponseBody
    public Msg deleteMovie(@PathVariable("movieID")Integer movieID){
        movieService.deleteMovie(movieID);
        return Msg.succuess();
    }

    @RequestMapping(value = "/MovieRecommend",method = RequestMethod.GET)
    @ResponseBody
    public Msg recommendMovie(@RequestParam(value = "userID")Integer userID) throws TasteException {

        List<RecommendedItem> items = movieService.userRecommend(userID);
        List<Movie> movies = new ArrayList<>();
        for(RecommendedItem item : items){
            movies.add(movieService.getMovie((int)item.getItemID()));
        }
        return Msg.succuess().add("movies",movies);
    }


}
