package com.wzj.mahout;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import org.apache.mahout.cf.taste.common.TasteException;
import org.apache.mahout.cf.taste.impl.model.jdbc.MySQLJDBCDataModel;
import org.apache.mahout.cf.taste.impl.recommender.GenericItemBasedRecommender;
import org.apache.mahout.cf.taste.impl.similarity.PearsonCorrelationSimilarity;
import org.apache.mahout.cf.taste.model.DataModel;
import org.apache.mahout.cf.taste.model.JDBCDataModel;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.recommender.Recommender;
import org.apache.mahout.cf.taste.similarity.ItemSimilarity;

import java.util.List;

/**
 * Created by kennywzj on 2019/4/25.
 */
public class mahoutJdbcItem {
    public List<RecommendedItem> itemRecommendation(Integer userID,Integer size) throws TasteException {
        long t1=System.currentTimeMillis();
        MysqlDataSource dataSource=new MysqlDataSource();
        dataSource.setServerName("localhost");
        dataSource.setUser("root");
        dataSource.setPassword("root");
        dataSource.setDatabaseName("Movie");
        JDBCDataModel dataModel=new MySQLJDBCDataModel(dataSource,"Ratings","UserID","MovieID","Rating", "TimeStrap");
        //	JDBCDataModel dataModel=new MySQLJDBCDataModel(dataSource,"mytable01","uid","iid","val",null);
        DataModel model=dataModel;
        ItemSimilarity similarity = new PearsonCorrelationSimilarity(model);//计算内容相似度
        Recommender recommender = new GenericItemBasedRecommender(model, similarity);//构造推荐引擎
        // the Recommender.recommend() method's arguments: first one is the user id;
        //     the second one is the number recommended
        List<RecommendedItem> recommendations=recommender.recommend(userID, 5);
        System.out.println("done and time spend:"+(System.currentTimeMillis()-t1));
        return recommendations;
    }
    public static  void main(String[] args) throws TasteException {

        List<RecommendedItem> recommendations = new mahoutJdbcItem().itemRecommendation(7001,5);

        // the Recommender.recommend() method's arguments: first one is the user id;
        //     the second one is the number recommended
        for(RecommendedItem recommendation:recommendations){
            System.out.println(recommendation);
        }
    }
}
