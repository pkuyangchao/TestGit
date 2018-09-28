package com.yc.movie.bean;

import java.util.ArrayList;
import java.util.List;

public class PlayExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public PlayExample() {
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

        public Criteria andPlayIdIsNull() {
            addCriterion("play_id is null");
            return (Criteria) this;
        }

        public Criteria andPlayIdIsNotNull() {
            addCriterion("play_id is not null");
            return (Criteria) this;
        }

        public Criteria andPlayIdEqualTo(Integer value) {
            addCriterion("play_id =", value, "playId");
            return (Criteria) this;
        }

        public Criteria andPlayIdNotEqualTo(Integer value) {
            addCriterion("play_id <>", value, "playId");
            return (Criteria) this;
        }

        public Criteria andPlayIdGreaterThan(Integer value) {
            addCriterion("play_id >", value, "playId");
            return (Criteria) this;
        }

        public Criteria andPlayIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("play_id >=", value, "playId");
            return (Criteria) this;
        }

        public Criteria andPlayIdLessThan(Integer value) {
            addCriterion("play_id <", value, "playId");
            return (Criteria) this;
        }

        public Criteria andPlayIdLessThanOrEqualTo(Integer value) {
            addCriterion("play_id <=", value, "playId");
            return (Criteria) this;
        }

        public Criteria andPlayIdIn(List<Integer> values) {
            addCriterion("play_id in", values, "playId");
            return (Criteria) this;
        }

        public Criteria andPlayIdNotIn(List<Integer> values) {
            addCriterion("play_id not in", values, "playId");
            return (Criteria) this;
        }

        public Criteria andPlayIdBetween(Integer value1, Integer value2) {
            addCriterion("play_id between", value1, value2, "playId");
            return (Criteria) this;
        }

        public Criteria andPlayIdNotBetween(Integer value1, Integer value2) {
            addCriterion("play_id not between", value1, value2, "playId");
            return (Criteria) this;
        }

        public Criteria andPlayMovieIsNull() {
            addCriterion("play_movie is null");
            return (Criteria) this;
        }

        public Criteria andPlayMovieIsNotNull() {
            addCriterion("play_movie is not null");
            return (Criteria) this;
        }

        public Criteria andPlayMovieEqualTo(Integer value) {
            addCriterion("play_movie =", value, "playMovie");
            return (Criteria) this;
        }

        public Criteria andPlayMovieNotEqualTo(Integer value) {
            addCriterion("play_movie <>", value, "playMovie");
            return (Criteria) this;
        }

        public Criteria andPlayMovieGreaterThan(Integer value) {
            addCriterion("play_movie >", value, "playMovie");
            return (Criteria) this;
        }

        public Criteria andPlayMovieGreaterThanOrEqualTo(Integer value) {
            addCriterion("play_movie >=", value, "playMovie");
            return (Criteria) this;
        }

        public Criteria andPlayMovieLessThan(Integer value) {
            addCriterion("play_movie <", value, "playMovie");
            return (Criteria) this;
        }

        public Criteria andPlayMovieLessThanOrEqualTo(Integer value) {
            addCriterion("play_movie <=", value, "playMovie");
            return (Criteria) this;
        }

        public Criteria andPlayMovieIn(List<Integer> values) {
            addCriterion("play_movie in", values, "playMovie");
            return (Criteria) this;
        }

        public Criteria andPlayMovieNotIn(List<Integer> values) {
            addCriterion("play_movie not in", values, "playMovie");
            return (Criteria) this;
        }

        public Criteria andPlayMovieBetween(Integer value1, Integer value2) {
            addCriterion("play_movie between", value1, value2, "playMovie");
            return (Criteria) this;
        }

        public Criteria andPlayMovieNotBetween(Integer value1, Integer value2) {
            addCriterion("play_movie not between", value1, value2, "playMovie");
            return (Criteria) this;
        }

        public Criteria andPlayTimeIsNull() {
            addCriterion("play_time is null");
            return (Criteria) this;
        }

        public Criteria andPlayTimeIsNotNull() {
            addCriterion("play_time is not null");
            return (Criteria) this;
        }

        public Criteria andPlayTimeEqualTo(String value) {
            addCriterion("play_time =", value, "playTime");
            return (Criteria) this;
        }

        public Criteria andPlayTimeNotEqualTo(String value) {
            addCriterion("play_time <>", value, "playTime");
            return (Criteria) this;
        }

        public Criteria andPlayTimeGreaterThan(String value) {
            addCriterion("play_time >", value, "playTime");
            return (Criteria) this;
        }

        public Criteria andPlayTimeGreaterThanOrEqualTo(String value) {
            addCriterion("play_time >=", value, "playTime");
            return (Criteria) this;
        }

        public Criteria andPlayTimeLessThan(String value) {
            addCriterion("play_time <", value, "playTime");
            return (Criteria) this;
        }

        public Criteria andPlayTimeLessThanOrEqualTo(String value) {
            addCriterion("play_time <=", value, "playTime");
            return (Criteria) this;
        }

        public Criteria andPlayTimeLike(String value) {
            addCriterion("play_time like", value, "playTime");
            return (Criteria) this;
        }

        public Criteria andPlayTimeNotLike(String value) {
            addCriterion("play_time not like", value, "playTime");
            return (Criteria) this;
        }

        public Criteria andPlayTimeIn(List<String> values) {
            addCriterion("play_time in", values, "playTime");
            return (Criteria) this;
        }

        public Criteria andPlayTimeNotIn(List<String> values) {
            addCriterion("play_time not in", values, "playTime");
            return (Criteria) this;
        }

        public Criteria andPlayTimeBetween(String value1, String value2) {
            addCriterion("play_time between", value1, value2, "playTime");
            return (Criteria) this;
        }

        public Criteria andPlayTimeNotBetween(String value1, String value2) {
            addCriterion("play_time not between", value1, value2, "playTime");
            return (Criteria) this;
        }

        public Criteria andPlayPriceIsNull() {
            addCriterion("play_price is null");
            return (Criteria) this;
        }

        public Criteria andPlayPriceIsNotNull() {
            addCriterion("play_price is not null");
            return (Criteria) this;
        }

        public Criteria andPlayPriceEqualTo(Float value) {
            addCriterion("play_price =", value, "playPrice");
            return (Criteria) this;
        }

        public Criteria andPlayPriceNotEqualTo(Float value) {
            addCriterion("play_price <>", value, "playPrice");
            return (Criteria) this;
        }

        public Criteria andPlayPriceGreaterThan(Float value) {
            addCriterion("play_price >", value, "playPrice");
            return (Criteria) this;
        }

        public Criteria andPlayPriceGreaterThanOrEqualTo(Float value) {
            addCriterion("play_price >=", value, "playPrice");
            return (Criteria) this;
        }

        public Criteria andPlayPriceLessThan(Float value) {
            addCriterion("play_price <", value, "playPrice");
            return (Criteria) this;
        }

        public Criteria andPlayPriceLessThanOrEqualTo(Float value) {
            addCriterion("play_price <=", value, "playPrice");
            return (Criteria) this;
        }

        public Criteria andPlayPriceIn(List<Float> values) {
            addCriterion("play_price in", values, "playPrice");
            return (Criteria) this;
        }

        public Criteria andPlayPriceNotIn(List<Float> values) {
            addCriterion("play_price not in", values, "playPrice");
            return (Criteria) this;
        }

        public Criteria andPlayPriceBetween(Float value1, Float value2) {
            addCriterion("play_price between", value1, value2, "playPrice");
            return (Criteria) this;
        }

        public Criteria andPlayPriceNotBetween(Float value1, Float value2) {
            addCriterion("play_price not between", value1, value2, "playPrice");
            return (Criteria) this;
        }

        public Criteria andPlayEndtimeIsNull() {
            addCriterion("play_endtime is null");
            return (Criteria) this;
        }

        public Criteria andPlayEndtimeIsNotNull() {
            addCriterion("play_endtime is not null");
            return (Criteria) this;
        }

        public Criteria andPlayEndtimeEqualTo(String value) {
            addCriterion("play_endtime =", value, "playEndtime");
            return (Criteria) this;
        }

        public Criteria andPlayEndtimeNotEqualTo(String value) {
            addCriterion("play_endtime <>", value, "playEndtime");
            return (Criteria) this;
        }

        public Criteria andPlayEndtimeGreaterThan(String value) {
            addCriterion("play_endtime >", value, "playEndtime");
            return (Criteria) this;
        }

        public Criteria andPlayEndtimeGreaterThanOrEqualTo(String value) {
            addCriterion("play_endtime >=", value, "playEndtime");
            return (Criteria) this;
        }

        public Criteria andPlayEndtimeLessThan(String value) {
            addCriterion("play_endtime <", value, "playEndtime");
            return (Criteria) this;
        }

        public Criteria andPlayEndtimeLessThanOrEqualTo(String value) {
            addCriterion("play_endtime <=", value, "playEndtime");
            return (Criteria) this;
        }

        public Criteria andPlayEndtimeLike(String value) {
            addCriterion("play_endtime like", value, "playEndtime");
            return (Criteria) this;
        }

        public Criteria andPlayEndtimeNotLike(String value) {
            addCriterion("play_endtime not like", value, "playEndtime");
            return (Criteria) this;
        }

        public Criteria andPlayEndtimeIn(List<String> values) {
            addCriterion("play_endtime in", values, "playEndtime");
            return (Criteria) this;
        }

        public Criteria andPlayEndtimeNotIn(List<String> values) {
            addCriterion("play_endtime not in", values, "playEndtime");
            return (Criteria) this;
        }

        public Criteria andPlayEndtimeBetween(String value1, String value2) {
            addCriterion("play_endtime between", value1, value2, "playEndtime");
            return (Criteria) this;
        }

        public Criteria andPlayEndtimeNotBetween(String value1, String value2) {
            addCriterion("play_endtime not between", value1, value2, "playEndtime");
            return (Criteria) this;
        }

        public Criteria andHallIdIsNull() {
            addCriterion("hall_id is null");
            return (Criteria) this;
        }

        public Criteria andHallIdIsNotNull() {
            addCriterion("hall_id is not null");
            return (Criteria) this;
        }

        public Criteria andHallIdEqualTo(Integer value) {
            addCriterion("hall_id =", value, "hallId");
            return (Criteria) this;
        }

        public Criteria andHallIdNotEqualTo(Integer value) {
            addCriterion("hall_id <>", value, "hallId");
            return (Criteria) this;
        }

        public Criteria andHallIdGreaterThan(Integer value) {
            addCriterion("hall_id >", value, "hallId");
            return (Criteria) this;
        }

        public Criteria andHallIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("hall_id >=", value, "hallId");
            return (Criteria) this;
        }

        public Criteria andHallIdLessThan(Integer value) {
            addCriterion("hall_id <", value, "hallId");
            return (Criteria) this;
        }

        public Criteria andHallIdLessThanOrEqualTo(Integer value) {
            addCriterion("hall_id <=", value, "hallId");
            return (Criteria) this;
        }

        public Criteria andHallIdIn(List<Integer> values) {
            addCriterion("hall_id in", values, "hallId");
            return (Criteria) this;
        }

        public Criteria andHallIdNotIn(List<Integer> values) {
            addCriterion("hall_id not in", values, "hallId");
            return (Criteria) this;
        }

        public Criteria andHallIdBetween(Integer value1, Integer value2) {
            addCriterion("hall_id between", value1, value2, "hallId");
            return (Criteria) this;
        }

        public Criteria andHallIdNotBetween(Integer value1, Integer value2) {
            addCriterion("hall_id not between", value1, value2, "hallId");
            return (Criteria) this;
        }

        public Criteria andCinemaIdIsNull() {
            addCriterion("cinema_id is null");
            return (Criteria) this;
        }

        public Criteria andCinemaIdIsNotNull() {
            addCriterion("cinema_id is not null");
            return (Criteria) this;
        }

        public Criteria andCinemaIdEqualTo(Integer value) {
            addCriterion("cinema_id =", value, "cinemaId");
            return (Criteria) this;
        }

        public Criteria andCinemaIdNotEqualTo(Integer value) {
            addCriterion("cinema_id <>", value, "cinemaId");
            return (Criteria) this;
        }

        public Criteria andCinemaIdGreaterThan(Integer value) {
            addCriterion("cinema_id >", value, "cinemaId");
            return (Criteria) this;
        }

        public Criteria andCinemaIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("cinema_id >=", value, "cinemaId");
            return (Criteria) this;
        }

        public Criteria andCinemaIdLessThan(Integer value) {
            addCriterion("cinema_id <", value, "cinemaId");
            return (Criteria) this;
        }

        public Criteria andCinemaIdLessThanOrEqualTo(Integer value) {
            addCriterion("cinema_id <=", value, "cinemaId");
            return (Criteria) this;
        }

        public Criteria andCinemaIdIn(List<Integer> values) {
            addCriterion("cinema_id in", values, "cinemaId");
            return (Criteria) this;
        }

        public Criteria andCinemaIdNotIn(List<Integer> values) {
            addCriterion("cinema_id not in", values, "cinemaId");
            return (Criteria) this;
        }

        public Criteria andCinemaIdBetween(Integer value1, Integer value2) {
            addCriterion("cinema_id between", value1, value2, "cinemaId");
            return (Criteria) this;
        }

        public Criteria andCinemaIdNotBetween(Integer value1, Integer value2) {
            addCriterion("cinema_id not between", value1, value2, "cinemaId");
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