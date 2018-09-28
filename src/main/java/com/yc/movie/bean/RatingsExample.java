package com.yc.movie.bean;

import java.util.ArrayList;
import java.util.List;

public class RatingsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public RatingsExample() {
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

        public Criteria andRatingsIdIsNull() {
            addCriterion("ratings_id is null");
            return (Criteria) this;
        }

        public Criteria andRatingsIdIsNotNull() {
            addCriterion("ratings_id is not null");
            return (Criteria) this;
        }

        public Criteria andRatingsIdEqualTo(Integer value) {
            addCriterion("ratings_id =", value, "ratingsId");
            return (Criteria) this;
        }

        public Criteria andRatingsIdNotEqualTo(Integer value) {
            addCriterion("ratings_id <>", value, "ratingsId");
            return (Criteria) this;
        }

        public Criteria andRatingsIdGreaterThan(Integer value) {
            addCriterion("ratings_id >", value, "ratingsId");
            return (Criteria) this;
        }

        public Criteria andRatingsIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("ratings_id >=", value, "ratingsId");
            return (Criteria) this;
        }

        public Criteria andRatingsIdLessThan(Integer value) {
            addCriterion("ratings_id <", value, "ratingsId");
            return (Criteria) this;
        }

        public Criteria andRatingsIdLessThanOrEqualTo(Integer value) {
            addCriterion("ratings_id <=", value, "ratingsId");
            return (Criteria) this;
        }

        public Criteria andRatingsIdIn(List<Integer> values) {
            addCriterion("ratings_id in", values, "ratingsId");
            return (Criteria) this;
        }

        public Criteria andRatingsIdNotIn(List<Integer> values) {
            addCriterion("ratings_id not in", values, "ratingsId");
            return (Criteria) this;
        }

        public Criteria andRatingsIdBetween(Integer value1, Integer value2) {
            addCriterion("ratings_id between", value1, value2, "ratingsId");
            return (Criteria) this;
        }

        public Criteria andRatingsIdNotBetween(Integer value1, Integer value2) {
            addCriterion("ratings_id not between", value1, value2, "ratingsId");
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
            addCriterion("movie_Id is null");
            return (Criteria) this;
        }

        public Criteria andMovieIdIsNotNull() {
            addCriterion("movie_Id is not null");
            return (Criteria) this;
        }

        public Criteria andMovieIdEqualTo(Integer value) {
            addCriterion("movie_Id =", value, "movieId");
            return (Criteria) this;
        }

        public Criteria andMovieIdNotEqualTo(Integer value) {
            addCriterion("movie_Id <>", value, "movieId");
            return (Criteria) this;
        }

        public Criteria andMovieIdGreaterThan(Integer value) {
            addCriterion("movie_Id >", value, "movieId");
            return (Criteria) this;
        }

        public Criteria andMovieIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("movie_Id >=", value, "movieId");
            return (Criteria) this;
        }

        public Criteria andMovieIdLessThan(Integer value) {
            addCriterion("movie_Id <", value, "movieId");
            return (Criteria) this;
        }

        public Criteria andMovieIdLessThanOrEqualTo(Integer value) {
            addCriterion("movie_Id <=", value, "movieId");
            return (Criteria) this;
        }

        public Criteria andMovieIdIn(List<Integer> values) {
            addCriterion("movie_Id in", values, "movieId");
            return (Criteria) this;
        }

        public Criteria andMovieIdNotIn(List<Integer> values) {
            addCriterion("movie_Id not in", values, "movieId");
            return (Criteria) this;
        }

        public Criteria andMovieIdBetween(Integer value1, Integer value2) {
            addCriterion("movie_Id between", value1, value2, "movieId");
            return (Criteria) this;
        }

        public Criteria andMovieIdNotBetween(Integer value1, Integer value2) {
            addCriterion("movie_Id not between", value1, value2, "movieId");
            return (Criteria) this;
        }

        public Criteria andPreferenceIsNull() {
            addCriterion("preference is null");
            return (Criteria) this;
        }

        public Criteria andPreferenceIsNotNull() {
            addCriterion("preference is not null");
            return (Criteria) this;
        }

        public Criteria andPreferenceEqualTo(Integer value) {
            addCriterion("preference =", value, "preference");
            return (Criteria) this;
        }

        public Criteria andPreferenceNotEqualTo(Integer value) {
            addCriterion("preference <>", value, "preference");
            return (Criteria) this;
        }

        public Criteria andPreferenceGreaterThan(Integer value) {
            addCriterion("preference >", value, "preference");
            return (Criteria) this;
        }

        public Criteria andPreferenceGreaterThanOrEqualTo(Integer value) {
            addCriterion("preference >=", value, "preference");
            return (Criteria) this;
        }

        public Criteria andPreferenceLessThan(Integer value) {
            addCriterion("preference <", value, "preference");
            return (Criteria) this;
        }

        public Criteria andPreferenceLessThanOrEqualTo(Integer value) {
            addCriterion("preference <=", value, "preference");
            return (Criteria) this;
        }

        public Criteria andPreferenceIn(List<Integer> values) {
            addCriterion("preference in", values, "preference");
            return (Criteria) this;
        }

        public Criteria andPreferenceNotIn(List<Integer> values) {
            addCriterion("preference not in", values, "preference");
            return (Criteria) this;
        }

        public Criteria andPreferenceBetween(Integer value1, Integer value2) {
            addCriterion("preference between", value1, value2, "preference");
            return (Criteria) this;
        }

        public Criteria andPreferenceNotBetween(Integer value1, Integer value2) {
            addCriterion("preference not between", value1, value2, "preference");
            return (Criteria) this;
        }

        public Criteria andRatingsTimeIsNull() {
            addCriterion("ratings_time is null");
            return (Criteria) this;
        }

        public Criteria andRatingsTimeIsNotNull() {
            addCriterion("ratings_time is not null");
            return (Criteria) this;
        }

        public Criteria andRatingsTimeEqualTo(Integer value) {
            addCriterion("ratings_time =", value, "ratingsTime");
            return (Criteria) this;
        }

        public Criteria andRatingsTimeNotEqualTo(Integer value) {
            addCriterion("ratings_time <>", value, "ratingsTime");
            return (Criteria) this;
        }

        public Criteria andRatingsTimeGreaterThan(Integer value) {
            addCriterion("ratings_time >", value, "ratingsTime");
            return (Criteria) this;
        }

        public Criteria andRatingsTimeGreaterThanOrEqualTo(Integer value) {
            addCriterion("ratings_time >=", value, "ratingsTime");
            return (Criteria) this;
        }

        public Criteria andRatingsTimeLessThan(Integer value) {
            addCriterion("ratings_time <", value, "ratingsTime");
            return (Criteria) this;
        }

        public Criteria andRatingsTimeLessThanOrEqualTo(Integer value) {
            addCriterion("ratings_time <=", value, "ratingsTime");
            return (Criteria) this;
        }

        public Criteria andRatingsTimeIn(List<Integer> values) {
            addCriterion("ratings_time in", values, "ratingsTime");
            return (Criteria) this;
        }

        public Criteria andRatingsTimeNotIn(List<Integer> values) {
            addCriterion("ratings_time not in", values, "ratingsTime");
            return (Criteria) this;
        }

        public Criteria andRatingsTimeBetween(Integer value1, Integer value2) {
            addCriterion("ratings_time between", value1, value2, "ratingsTime");
            return (Criteria) this;
        }

        public Criteria andRatingsTimeNotBetween(Integer value1, Integer value2) {
            addCriterion("ratings_time not between", value1, value2, "ratingsTime");
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