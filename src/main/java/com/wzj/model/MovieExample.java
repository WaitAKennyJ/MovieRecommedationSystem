package com.wzj.model;

import java.util.ArrayList;
import java.util.List;

public class MovieExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MovieExample() {
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

        public Criteria andMovieIDIsNull() {
            addCriterion("MovieID is null");
            return (Criteria) this;
        }

        public Criteria andMovieIDIsNotNull() {
            addCriterion("MovieID is not null");
            return (Criteria) this;
        }

        public Criteria andMovieIDEqualTo(Integer value) {
            addCriterion("MovieID =", value, "movieID");
            return (Criteria) this;
        }

        public Criteria andMovieIDNotEqualTo(Integer value) {
            addCriterion("MovieID <>", value, "movieID");
            return (Criteria) this;
        }

        public Criteria andMovieIDGreaterThan(Integer value) {
            addCriterion("MovieID >", value, "movieID");
            return (Criteria) this;
        }

        public Criteria andMovieIDGreaterThanOrEqualTo(Integer value) {
            addCriterion("MovieID >=", value, "movieID");
            return (Criteria) this;
        }

        public Criteria andMovieIDLessThan(Integer value) {
            addCriterion("MovieID <", value, "movieID");
            return (Criteria) this;
        }

        public Criteria andMovieIDLessThanOrEqualTo(Integer value) {
            addCriterion("MovieID <=", value, "movieID");
            return (Criteria) this;
        }

        public Criteria andMovieIDIn(List<Integer> values) {
            addCriterion("MovieID in", values, "movieID");
            return (Criteria) this;
        }

        public Criteria andMovieIDNotIn(List<Integer> values) {
            addCriterion("MovieID not in", values, "movieID");
            return (Criteria) this;
        }

        public Criteria andMovieIDBetween(Integer value1, Integer value2) {
            addCriterion("MovieID between", value1, value2, "movieID");
            return (Criteria) this;
        }

        public Criteria andMovieIDNotBetween(Integer value1, Integer value2) {
            addCriterion("MovieID not between", value1, value2, "movieID");
            return (Criteria) this;
        }

        public Criteria andTitleIsNull() {
            addCriterion("Title is null");
            return (Criteria) this;
        }

        public Criteria andTitleIsNotNull() {
            addCriterion("Title is not null");
            return (Criteria) this;
        }

        public Criteria andTitleEqualTo(String value) {
            addCriterion("Title =", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotEqualTo(String value) {
            addCriterion("Title <>", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThan(String value) {
            addCriterion("Title >", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleGreaterThanOrEqualTo(String value) {
            addCriterion("Title >=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThan(String value) {
            addCriterion("Title <", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLessThanOrEqualTo(String value) {
            addCriterion("Title <=", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleLike(String value) {
            addCriterion("Title like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotLike(String value) {
            addCriterion("Title not like", value, "title");
            return (Criteria) this;
        }

        public Criteria andTitleIn(List<String> values) {
            addCriterion("Title in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotIn(List<String> values) {
            addCriterion("Title not in", values, "title");
            return (Criteria) this;
        }

        public Criteria andTitleBetween(String value1, String value2) {
            addCriterion("Title between", value1, value2, "title");
            return (Criteria) this;
        }

        public Criteria andTitleNotBetween(String value1, String value2) {
            addCriterion("Title not between", value1, value2, "title");
            return (Criteria) this;
        }

        public Criteria andPublishYearIsNull() {
            addCriterion("publishYear is null");
            return (Criteria) this;
        }

        public Criteria andPublishYearIsNotNull() {
            addCriterion("publishYear is not null");
            return (Criteria) this;
        }

        public Criteria andPublishYearEqualTo(String value) {
            addCriterion("publishYear =", value, "publishYear");
            return (Criteria) this;
        }

        public Criteria andPublishYearNotEqualTo(String value) {
            addCriterion("publishYear <>", value, "publishYear");
            return (Criteria) this;
        }

        public Criteria andPublishYearGreaterThan(String value) {
            addCriterion("publishYear >", value, "publishYear");
            return (Criteria) this;
        }

        public Criteria andPublishYearGreaterThanOrEqualTo(String value) {
            addCriterion("publishYear >=", value, "publishYear");
            return (Criteria) this;
        }

        public Criteria andPublishYearLessThan(String value) {
            addCriterion("publishYear <", value, "publishYear");
            return (Criteria) this;
        }

        public Criteria andPublishYearLessThanOrEqualTo(String value) {
            addCriterion("publishYear <=", value, "publishYear");
            return (Criteria) this;
        }

        public Criteria andPublishYearLike(String value) {
            addCriterion("publishYear like", value, "publishYear");
            return (Criteria) this;
        }

        public Criteria andPublishYearNotLike(String value) {
            addCriterion("publishYear not like", value, "publishYear");
            return (Criteria) this;
        }

        public Criteria andPublishYearIn(List<String> values) {
            addCriterion("publishYear in", values, "publishYear");
            return (Criteria) this;
        }

        public Criteria andPublishYearNotIn(List<String> values) {
            addCriterion("publishYear not in", values, "publishYear");
            return (Criteria) this;
        }

        public Criteria andPublishYearBetween(String value1, String value2) {
            addCriterion("publishYear between", value1, value2, "publishYear");
            return (Criteria) this;
        }

        public Criteria andPublishYearNotBetween(String value1, String value2) {
            addCriterion("publishYear not between", value1, value2, "publishYear");
            return (Criteria) this;
        }

        public Criteria andGenresIsNull() {
            addCriterion("Genres is null");
            return (Criteria) this;
        }

        public Criteria andGenresIsNotNull() {
            addCriterion("Genres is not null");
            return (Criteria) this;
        }

        public Criteria andGenresEqualTo(String value) {
            addCriterion("Genres =", value, "genres");
            return (Criteria) this;
        }

        public Criteria andGenresNotEqualTo(String value) {
            addCriterion("Genres <>", value, "genres");
            return (Criteria) this;
        }

        public Criteria andGenresGreaterThan(String value) {
            addCriterion("Genres >", value, "genres");
            return (Criteria) this;
        }

        public Criteria andGenresGreaterThanOrEqualTo(String value) {
            addCriterion("Genres >=", value, "genres");
            return (Criteria) this;
        }

        public Criteria andGenresLessThan(String value) {
            addCriterion("Genres <", value, "genres");
            return (Criteria) this;
        }

        public Criteria andGenresLessThanOrEqualTo(String value) {
            addCriterion("Genres <=", value, "genres");
            return (Criteria) this;
        }

        public Criteria andGenresLike(String value) {
            addCriterion("Genres like", value, "genres");
            return (Criteria) this;
        }

        public Criteria andGenresNotLike(String value) {
            addCriterion("Genres not like", value, "genres");
            return (Criteria) this;
        }

        public Criteria andGenresIn(List<String> values) {
            addCriterion("Genres in", values, "genres");
            return (Criteria) this;
        }

        public Criteria andGenresNotIn(List<String> values) {
            addCriterion("Genres not in", values, "genres");
            return (Criteria) this;
        }

        public Criteria andGenresBetween(String value1, String value2) {
            addCriterion("Genres between", value1, value2, "genres");
            return (Criteria) this;
        }

        public Criteria andGenresNotBetween(String value1, String value2) {
            addCriterion("Genres not between", value1, value2, "genres");
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