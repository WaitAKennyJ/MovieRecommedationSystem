package com.wzj.model;

import java.util.ArrayList;
import java.util.List;

public class RecommendationExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public RecommendationExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andUserIDIsNull() {
            addCriterion("UserID is null");
            return (Criteria) this;
        }

        public Criteria andUserIDIsNotNull() {
            addCriterion("UserID is not null");
            return (Criteria) this;
        }

        public Criteria andUserIDEqualTo(Integer value) {
            addCriterion("UserID =", value, "userID");
            return (Criteria) this;
        }

        public Criteria andUserIDNotEqualTo(Integer value) {
            addCriterion("UserID <>", value, "userID");
            return (Criteria) this;
        }

        public Criteria andUserIDGreaterThan(Integer value) {
            addCriterion("UserID >", value, "userID");
            return (Criteria) this;
        }

        public Criteria andUserIDGreaterThanOrEqualTo(Integer value) {
            addCriterion("UserID >=", value, "userID");
            return (Criteria) this;
        }

        public Criteria andUserIDLessThan(Integer value) {
            addCriterion("UserID <", value, "userID");
            return (Criteria) this;
        }

        public Criteria andUserIDLessThanOrEqualTo(Integer value) {
            addCriterion("UserID <=", value, "userID");
            return (Criteria) this;
        }

        public Criteria andUserIDIn(List<Integer> values) {
            addCriterion("UserID in", values, "userID");
            return (Criteria) this;
        }

        public Criteria andUserIDNotIn(List<Integer> values) {
            addCriterion("UserID not in", values, "userID");
            return (Criteria) this;
        }

        public Criteria andUserIDBetween(Integer value1, Integer value2) {
            addCriterion("UserID between", value1, value2, "userID");
            return (Criteria) this;
        }

        public Criteria andUserIDNotBetween(Integer value1, Integer value2) {
            addCriterion("UserID not between", value1, value2, "userID");
            return (Criteria) this;
        }

        public Criteria andSelectMovieIsNull() {
            addCriterion("SelectMovie is null");
            return (Criteria) this;
        }

        public Criteria andSelectMovieIsNotNull() {
            addCriterion("SelectMovie is not null");
            return (Criteria) this;
        }

        public Criteria andSelectMovieEqualTo(String value) {
            addCriterion("SelectMovie =", value, "selectMovie");
            return (Criteria) this;
        }

        public Criteria andSelectMovieNotEqualTo(String value) {
            addCriterion("SelectMovie <>", value, "selectMovie");
            return (Criteria) this;
        }

        public Criteria andSelectMovieGreaterThan(String value) {
            addCriterion("SelectMovie >", value, "selectMovie");
            return (Criteria) this;
        }

        public Criteria andSelectMovieGreaterThanOrEqualTo(String value) {
            addCriterion("SelectMovie >=", value, "selectMovie");
            return (Criteria) this;
        }

        public Criteria andSelectMovieLessThan(String value) {
            addCriterion("SelectMovie <", value, "selectMovie");
            return (Criteria) this;
        }

        public Criteria andSelectMovieLessThanOrEqualTo(String value) {
            addCriterion("SelectMovie <=", value, "selectMovie");
            return (Criteria) this;
        }

        public Criteria andSelectMovieLike(String value) {
            addCriterion("SelectMovie like", value, "selectMovie");
            return (Criteria) this;
        }

        public Criteria andSelectMovieNotLike(String value) {
            addCriterion("SelectMovie not like", value, "selectMovie");
            return (Criteria) this;
        }

        public Criteria andSelectMovieIn(List<String> values) {
            addCriterion("SelectMovie in", values, "selectMovie");
            return (Criteria) this;
        }

        public Criteria andSelectMovieNotIn(List<String> values) {
            addCriterion("SelectMovie not in", values, "selectMovie");
            return (Criteria) this;
        }

        public Criteria andSelectMovieBetween(String value1, String value2) {
            addCriterion("SelectMovie between", value1, value2, "selectMovie");
            return (Criteria) this;
        }

        public Criteria andSelectMovieNotBetween(String value1, String value2) {
            addCriterion("SelectMovie not between", value1, value2, "selectMovie");
            return (Criteria) this;
        }

        public Criteria andRecommendMovieIsNull() {
            addCriterion("RecommendMovie is null");
            return (Criteria) this;
        }

        public Criteria andRecommendMovieIsNotNull() {
            addCriterion("RecommendMovie is not null");
            return (Criteria) this;
        }

        public Criteria andRecommendMovieEqualTo(String value) {
            addCriterion("RecommendMovie =", value, "recommendMovie");
            return (Criteria) this;
        }

        public Criteria andRecommendMovieNotEqualTo(String value) {
            addCriterion("RecommendMovie <>", value, "recommendMovie");
            return (Criteria) this;
        }

        public Criteria andRecommendMovieGreaterThan(String value) {
            addCriterion("RecommendMovie >", value, "recommendMovie");
            return (Criteria) this;
        }

        public Criteria andRecommendMovieGreaterThanOrEqualTo(String value) {
            addCriterion("RecommendMovie >=", value, "recommendMovie");
            return (Criteria) this;
        }

        public Criteria andRecommendMovieLessThan(String value) {
            addCriterion("RecommendMovie <", value, "recommendMovie");
            return (Criteria) this;
        }

        public Criteria andRecommendMovieLessThanOrEqualTo(String value) {
            addCriterion("RecommendMovie <=", value, "recommendMovie");
            return (Criteria) this;
        }

        public Criteria andRecommendMovieLike(String value) {
            addCriterion("RecommendMovie like", value, "recommendMovie");
            return (Criteria) this;
        }

        public Criteria andRecommendMovieNotLike(String value) {
            addCriterion("RecommendMovie not like", value, "recommendMovie");
            return (Criteria) this;
        }

        public Criteria andRecommendMovieIn(List<String> values) {
            addCriterion("RecommendMovie in", values, "recommendMovie");
            return (Criteria) this;
        }

        public Criteria andRecommendMovieNotIn(List<String> values) {
            addCriterion("RecommendMovie not in", values, "recommendMovie");
            return (Criteria) this;
        }

        public Criteria andRecommendMovieBetween(String value1, String value2) {
            addCriterion("RecommendMovie between", value1, value2, "recommendMovie");
            return (Criteria) this;
        }

        public Criteria andRecommendMovieNotBetween(String value1, String value2) {
            addCriterion("RecommendMovie not between", value1, value2, "recommendMovie");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}