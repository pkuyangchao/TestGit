package com.yc.movie.bean;

import java.util.ArrayList;
import java.util.List;

public class BrowsingHistoryExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public BrowsingHistoryExample() {
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

        public Criteria andBrowsingIdIsNull() {
            addCriterion("browsing_id is null");
            return (Criteria) this;
        }

        public Criteria andBrowsingIdIsNotNull() {
            addCriterion("browsing_id is not null");
            return (Criteria) this;
        }

        public Criteria andBrowsingIdEqualTo(Integer value) {
            addCriterion("browsing_id =", value, "browsingId");
            return (Criteria) this;
        }

        public Criteria andBrowsingIdNotEqualTo(Integer value) {
            addCriterion("browsing_id <>", value, "browsingId");
            return (Criteria) this;
        }

        public Criteria andBrowsingIdGreaterThan(Integer value) {
            addCriterion("browsing_id >", value, "browsingId");
            return (Criteria) this;
        }

        public Criteria andBrowsingIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("browsing_id >=", value, "browsingId");
            return (Criteria) this;
        }

        public Criteria andBrowsingIdLessThan(Integer value) {
            addCriterion("browsing_id <", value, "browsingId");
            return (Criteria) this;
        }

        public Criteria andBrowsingIdLessThanOrEqualTo(Integer value) {
            addCriterion("browsing_id <=", value, "browsingId");
            return (Criteria) this;
        }

        public Criteria andBrowsingIdIn(List<Integer> values) {
            addCriterion("browsing_id in", values, "browsingId");
            return (Criteria) this;
        }

        public Criteria andBrowsingIdNotIn(List<Integer> values) {
            addCriterion("browsing_id not in", values, "browsingId");
            return (Criteria) this;
        }

        public Criteria andBrowsingIdBetween(Integer value1, Integer value2) {
            addCriterion("browsing_id between", value1, value2, "browsingId");
            return (Criteria) this;
        }

        public Criteria andBrowsingIdNotBetween(Integer value1, Integer value2) {
            addCriterion("browsing_id not between", value1, value2, "browsingId");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(Integer value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(Integer value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(Integer value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(Integer value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<Integer> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<Integer> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(Integer value1, Integer value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("user_id not between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andMovieIdIsNull() {
            addCriterion("movie_id is null");
            return (Criteria) this;
        }

        public Criteria andMovieIdIsNotNull() {
            addCriterion("movie_id is not null");
            return (Criteria) this;
        }

        public Criteria andMovieIdEqualTo(Integer value) {
            addCriterion("movie_id =", value, "movieId");
            return (Criteria) this;
        }

        public Criteria andMovieIdNotEqualTo(Integer value) {
            addCriterion("movie_id <>", value, "movieId");
            return (Criteria) this;
        }

        public Criteria andMovieIdGreaterThan(Integer value) {
            addCriterion("movie_id >", value, "movieId");
            return (Criteria) this;
        }

        public Criteria andMovieIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("movie_id >=", value, "movieId");
            return (Criteria) this;
        }

        public Criteria andMovieIdLessThan(Integer value) {
            addCriterion("movie_id <", value, "movieId");
            return (Criteria) this;
        }

        public Criteria andMovieIdLessThanOrEqualTo(Integer value) {
            addCriterion("movie_id <=", value, "movieId");
            return (Criteria) this;
        }

        public Criteria andMovieIdIn(List<Integer> values) {
            addCriterion("movie_id in", values, "movieId");
            return (Criteria) this;
        }

        public Criteria andMovieIdNotIn(List<Integer> values) {
            addCriterion("movie_id not in", values, "movieId");
            return (Criteria) this;
        }

        public Criteria andMovieIdBetween(Integer value1, Integer value2) {
            addCriterion("movie_id between", value1, value2, "movieId");
            return (Criteria) this;
        }

        public Criteria andMovieIdNotBetween(Integer value1, Integer value2) {
            addCriterion("movie_id not between", value1, value2, "movieId");
            return (Criteria) this;
        }

        public Criteria andBrowsingTimeIsNull() {
            addCriterion("browsing_time is null");
            return (Criteria) this;
        }

        public Criteria andBrowsingTimeIsNotNull() {
            addCriterion("browsing_time is not null");
            return (Criteria) this;
        }

        public Criteria andBrowsingTimeEqualTo(String value) {
            addCriterion("browsing_time =", value, "browsingTime");
            return (Criteria) this;
        }

        public Criteria andBrowsingTimeNotEqualTo(String value) {
            addCriterion("browsing_time <>", value, "browsingTime");
            return (Criteria) this;
        }

        public Criteria andBrowsingTimeGreaterThan(String value) {
            addCriterion("browsing_time >", value, "browsingTime");
            return (Criteria) this;
        }

        public Criteria andBrowsingTimeGreaterThanOrEqualTo(String value) {
            addCriterion("browsing_time >=", value, "browsingTime");
            return (Criteria) this;
        }

        public Criteria andBrowsingTimeLessThan(String value) {
            addCriterion("browsing_time <", value, "browsingTime");
            return (Criteria) this;
        }

        public Criteria andBrowsingTimeLessThanOrEqualTo(String value) {
            addCriterion("browsing_time <=", value, "browsingTime");
            return (Criteria) this;
        }

        public Criteria andBrowsingTimeLike(String value) {
            addCriterion("browsing_time like", value, "browsingTime");
            return (Criteria) this;
        }

        public Criteria andBrowsingTimeNotLike(String value) {
            addCriterion("browsing_time not like", value, "browsingTime");
            return (Criteria) this;
        }

        public Criteria andBrowsingTimeIn(List<String> values) {
            addCriterion("browsing_time in", values, "browsingTime");
            return (Criteria) this;
        }

        public Criteria andBrowsingTimeNotIn(List<String> values) {
            addCriterion("browsing_time not in", values, "browsingTime");
            return (Criteria) this;
        }

        public Criteria andBrowsingTimeBetween(String value1, String value2) {
            addCriterion("browsing_time between", value1, value2, "browsingTime");
            return (Criteria) this;
        }

        public Criteria andBrowsingTimeNotBetween(String value1, String value2) {
            addCriterion("browsing_time not between", value1, value2, "browsingTime");
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