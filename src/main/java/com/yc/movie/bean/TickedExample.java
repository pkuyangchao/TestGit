package com.yc.movie.bean;

import java.util.ArrayList;
import java.util.List;

public class TickedExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TickedExample() {
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

        public Criteria andTickedIdIsNull() {
            addCriterion("ticked_id is null");
            return (Criteria) this;
        }

        public Criteria andTickedIdIsNotNull() {
            addCriterion("ticked_id is not null");
            return (Criteria) this;
        }

        public Criteria andTickedIdEqualTo(Integer value) {
            addCriterion("ticked_id =", value, "tickedId");
            return (Criteria) this;
        }

        public Criteria andTickedIdNotEqualTo(Integer value) {
            addCriterion("ticked_id <>", value, "tickedId");
            return (Criteria) this;
        }

        public Criteria andTickedIdGreaterThan(Integer value) {
            addCriterion("ticked_id >", value, "tickedId");
            return (Criteria) this;
        }

        public Criteria andTickedIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("ticked_id >=", value, "tickedId");
            return (Criteria) this;
        }

        public Criteria andTickedIdLessThan(Integer value) {
            addCriterion("ticked_id <", value, "tickedId");
            return (Criteria) this;
        }

        public Criteria andTickedIdLessThanOrEqualTo(Integer value) {
            addCriterion("ticked_id <=", value, "tickedId");
            return (Criteria) this;
        }

        public Criteria andTickedIdIn(List<Integer> values) {
            addCriterion("ticked_id in", values, "tickedId");
            return (Criteria) this;
        }

        public Criteria andTickedIdNotIn(List<Integer> values) {
            addCriterion("ticked_id not in", values, "tickedId");
            return (Criteria) this;
        }

        public Criteria andTickedIdBetween(Integer value1, Integer value2) {
            addCriterion("ticked_id between", value1, value2, "tickedId");
            return (Criteria) this;
        }

        public Criteria andTickedIdNotBetween(Integer value1, Integer value2) {
            addCriterion("ticked_id not between", value1, value2, "tickedId");
            return (Criteria) this;
        }

        public Criteria andTickedPlayIsNull() {
            addCriterion("ticked_play is null");
            return (Criteria) this;
        }

        public Criteria andTickedPlayIsNotNull() {
            addCriterion("ticked_play is not null");
            return (Criteria) this;
        }

        public Criteria andTickedPlayEqualTo(Integer value) {
            addCriterion("ticked_play =", value, "tickedPlay");
            return (Criteria) this;
        }

        public Criteria andTickedPlayNotEqualTo(Integer value) {
            addCriterion("ticked_play <>", value, "tickedPlay");
            return (Criteria) this;
        }

        public Criteria andTickedPlayGreaterThan(Integer value) {
            addCriterion("ticked_play >", value, "tickedPlay");
            return (Criteria) this;
        }

        public Criteria andTickedPlayGreaterThanOrEqualTo(Integer value) {
            addCriterion("ticked_play >=", value, "tickedPlay");
            return (Criteria) this;
        }

        public Criteria andTickedPlayLessThan(Integer value) {
            addCriterion("ticked_play <", value, "tickedPlay");
            return (Criteria) this;
        }

        public Criteria andTickedPlayLessThanOrEqualTo(Integer value) {
            addCriterion("ticked_play <=", value, "tickedPlay");
            return (Criteria) this;
        }

        public Criteria andTickedPlayIn(List<Integer> values) {
            addCriterion("ticked_play in", values, "tickedPlay");
            return (Criteria) this;
        }

        public Criteria andTickedPlayNotIn(List<Integer> values) {
            addCriterion("ticked_play not in", values, "tickedPlay");
            return (Criteria) this;
        }

        public Criteria andTickedPlayBetween(Integer value1, Integer value2) {
            addCriterion("ticked_play between", value1, value2, "tickedPlay");
            return (Criteria) this;
        }

        public Criteria andTickedPlayNotBetween(Integer value1, Integer value2) {
            addCriterion("ticked_play not between", value1, value2, "tickedPlay");
            return (Criteria) this;
        }

        public Criteria andTickedUserIsNull() {
            addCriterion("ticked_user is null");
            return (Criteria) this;
        }

        public Criteria andTickedUserIsNotNull() {
            addCriterion("ticked_user is not null");
            return (Criteria) this;
        }

        public Criteria andTickedUserEqualTo(Integer value) {
            addCriterion("ticked_user =", value, "tickedUser");
            return (Criteria) this;
        }

        public Criteria andTickedUserNotEqualTo(Integer value) {
            addCriterion("ticked_user <>", value, "tickedUser");
            return (Criteria) this;
        }

        public Criteria andTickedUserGreaterThan(Integer value) {
            addCriterion("ticked_user >", value, "tickedUser");
            return (Criteria) this;
        }

        public Criteria andTickedUserGreaterThanOrEqualTo(Integer value) {
            addCriterion("ticked_user >=", value, "tickedUser");
            return (Criteria) this;
        }

        public Criteria andTickedUserLessThan(Integer value) {
            addCriterion("ticked_user <", value, "tickedUser");
            return (Criteria) this;
        }

        public Criteria andTickedUserLessThanOrEqualTo(Integer value) {
            addCriterion("ticked_user <=", value, "tickedUser");
            return (Criteria) this;
        }

        public Criteria andTickedUserIn(List<Integer> values) {
            addCriterion("ticked_user in", values, "tickedUser");
            return (Criteria) this;
        }

        public Criteria andTickedUserNotIn(List<Integer> values) {
            addCriterion("ticked_user not in", values, "tickedUser");
            return (Criteria) this;
        }

        public Criteria andTickedUserBetween(Integer value1, Integer value2) {
            addCriterion("ticked_user between", value1, value2, "tickedUser");
            return (Criteria) this;
        }

        public Criteria andTickedUserNotBetween(Integer value1, Integer value2) {
            addCriterion("ticked_user not between", value1, value2, "tickedUser");
            return (Criteria) this;
        }

        public Criteria andTickedSeatIsNull() {
            addCriterion("ticked_seat is null");
            return (Criteria) this;
        }

        public Criteria andTickedSeatIsNotNull() {
            addCriterion("ticked_seat is not null");
            return (Criteria) this;
        }

        public Criteria andTickedSeatEqualTo(Integer value) {
            addCriterion("ticked_seat =", value, "tickedSeat");
            return (Criteria) this;
        }

        public Criteria andTickedSeatNotEqualTo(Integer value) {
            addCriterion("ticked_seat <>", value, "tickedSeat");
            return (Criteria) this;
        }

        public Criteria andTickedSeatGreaterThan(Integer value) {
            addCriterion("ticked_seat >", value, "tickedSeat");
            return (Criteria) this;
        }

        public Criteria andTickedSeatGreaterThanOrEqualTo(Integer value) {
            addCriterion("ticked_seat >=", value, "tickedSeat");
            return (Criteria) this;
        }

        public Criteria andTickedSeatLessThan(Integer value) {
            addCriterion("ticked_seat <", value, "tickedSeat");
            return (Criteria) this;
        }

        public Criteria andTickedSeatLessThanOrEqualTo(Integer value) {
            addCriterion("ticked_seat <=", value, "tickedSeat");
            return (Criteria) this;
        }

        public Criteria andTickedSeatIn(List<Integer> values) {
            addCriterion("ticked_seat in", values, "tickedSeat");
            return (Criteria) this;
        }

        public Criteria andTickedSeatNotIn(List<Integer> values) {
            addCriterion("ticked_seat not in", values, "tickedSeat");
            return (Criteria) this;
        }

        public Criteria andTickedSeatBetween(Integer value1, Integer value2) {
            addCriterion("ticked_seat between", value1, value2, "tickedSeat");
            return (Criteria) this;
        }

        public Criteria andTickedSeatNotBetween(Integer value1, Integer value2) {
            addCriterion("ticked_seat not between", value1, value2, "tickedSeat");
            return (Criteria) this;
        }

        public Criteria andTickedPriceIsNull() {
            addCriterion("ticked_price is null");
            return (Criteria) this;
        }

        public Criteria andTickedPriceIsNotNull() {
            addCriterion("ticked_price is not null");
            return (Criteria) this;
        }

        public Criteria andTickedPriceEqualTo(Float value) {
            addCriterion("ticked_price =", value, "tickedPrice");
            return (Criteria) this;
        }

        public Criteria andTickedPriceNotEqualTo(Float value) {
            addCriterion("ticked_price <>", value, "tickedPrice");
            return (Criteria) this;
        }

        public Criteria andTickedPriceGreaterThan(Float value) {
            addCriterion("ticked_price >", value, "tickedPrice");
            return (Criteria) this;
        }

        public Criteria andTickedPriceGreaterThanOrEqualTo(Float value) {
            addCriterion("ticked_price >=", value, "tickedPrice");
            return (Criteria) this;
        }

        public Criteria andTickedPriceLessThan(Float value) {
            addCriterion("ticked_price <", value, "tickedPrice");
            return (Criteria) this;
        }

        public Criteria andTickedPriceLessThanOrEqualTo(Float value) {
            addCriterion("ticked_price <=", value, "tickedPrice");
            return (Criteria) this;
        }

        public Criteria andTickedPriceIn(List<Float> values) {
            addCriterion("ticked_price in", values, "tickedPrice");
            return (Criteria) this;
        }

        public Criteria andTickedPriceNotIn(List<Float> values) {
            addCriterion("ticked_price not in", values, "tickedPrice");
            return (Criteria) this;
        }

        public Criteria andTickedPriceBetween(Float value1, Float value2) {
            addCriterion("ticked_price between", value1, value2, "tickedPrice");
            return (Criteria) this;
        }

        public Criteria andTickedPriceNotBetween(Float value1, Float value2) {
            addCriterion("ticked_price not between", value1, value2, "tickedPrice");
            return (Criteria) this;
        }

        public Criteria andTickedTimeIsNull() {
            addCriterion("ticked_time is null");
            return (Criteria) this;
        }

        public Criteria andTickedTimeIsNotNull() {
            addCriterion("ticked_time is not null");
            return (Criteria) this;
        }

        public Criteria andTickedTimeEqualTo(String value) {
            addCriterion("ticked_time =", value, "tickedTime");
            return (Criteria) this;
        }

        public Criteria andTickedTimeNotEqualTo(String value) {
            addCriterion("ticked_time <>", value, "tickedTime");
            return (Criteria) this;
        }

        public Criteria andTickedTimeGreaterThan(String value) {
            addCriterion("ticked_time >", value, "tickedTime");
            return (Criteria) this;
        }

        public Criteria andTickedTimeGreaterThanOrEqualTo(String value) {
            addCriterion("ticked_time >=", value, "tickedTime");
            return (Criteria) this;
        }

        public Criteria andTickedTimeLessThan(String value) {
            addCriterion("ticked_time <", value, "tickedTime");
            return (Criteria) this;
        }

        public Criteria andTickedTimeLessThanOrEqualTo(String value) {
            addCriterion("ticked_time <=", value, "tickedTime");
            return (Criteria) this;
        }

        public Criteria andTickedTimeLike(String value) {
            addCriterion("ticked_time like", value, "tickedTime");
            return (Criteria) this;
        }

        public Criteria andTickedTimeNotLike(String value) {
            addCriterion("ticked_time not like", value, "tickedTime");
            return (Criteria) this;
        }

        public Criteria andTickedTimeIn(List<String> values) {
            addCriterion("ticked_time in", values, "tickedTime");
            return (Criteria) this;
        }

        public Criteria andTickedTimeNotIn(List<String> values) {
            addCriterion("ticked_time not in", values, "tickedTime");
            return (Criteria) this;
        }

        public Criteria andTickedTimeBetween(String value1, String value2) {
            addCriterion("ticked_time between", value1, value2, "tickedTime");
            return (Criteria) this;
        }

        public Criteria andTickedTimeNotBetween(String value1, String value2) {
            addCriterion("ticked_time not between", value1, value2, "tickedTime");
            return (Criteria) this;
        }

        public Criteria andTickedFlagIsNull() {
            addCriterion("ticked_flag is null");
            return (Criteria) this;
        }

        public Criteria andTickedFlagIsNotNull() {
            addCriterion("ticked_flag is not null");
            return (Criteria) this;
        }

        public Criteria andTickedFlagEqualTo(Integer value) {
            addCriterion("ticked_flag =", value, "tickedFlag");
            return (Criteria) this;
        }

        public Criteria andTickedFlagNotEqualTo(Integer value) {
            addCriterion("ticked_flag <>", value, "tickedFlag");
            return (Criteria) this;
        }

        public Criteria andTickedFlagGreaterThan(Integer value) {
            addCriterion("ticked_flag >", value, "tickedFlag");
            return (Criteria) this;
        }

        public Criteria andTickedFlagGreaterThanOrEqualTo(Integer value) {
            addCriterion("ticked_flag >=", value, "tickedFlag");
            return (Criteria) this;
        }

        public Criteria andTickedFlagLessThan(Integer value) {
            addCriterion("ticked_flag <", value, "tickedFlag");
            return (Criteria) this;
        }

        public Criteria andTickedFlagLessThanOrEqualTo(Integer value) {
            addCriterion("ticked_flag <=", value, "tickedFlag");
            return (Criteria) this;
        }

        public Criteria andTickedFlagIn(List<Integer> values) {
            addCriterion("ticked_flag in", values, "tickedFlag");
            return (Criteria) this;
        }

        public Criteria andTickedFlagNotIn(List<Integer> values) {
            addCriterion("ticked_flag not in", values, "tickedFlag");
            return (Criteria) this;
        }

        public Criteria andTickedFlagBetween(Integer value1, Integer value2) {
            addCriterion("ticked_flag between", value1, value2, "tickedFlag");
            return (Criteria) this;
        }

        public Criteria andTickedFlagNotBetween(Integer value1, Integer value2) {
            addCriterion("ticked_flag not between", value1, value2, "tickedFlag");
            return (Criteria) this;
        }

        public Criteria andTickedCodeIsNull() {
            addCriterion("ticked_code is null");
            return (Criteria) this;
        }

        public Criteria andTickedCodeIsNotNull() {
            addCriterion("ticked_code is not null");
            return (Criteria) this;
        }

        public Criteria andTickedCodeEqualTo(String value) {
            addCriterion("ticked_code =", value, "tickedCode");
            return (Criteria) this;
        }

        public Criteria andTickedCodeNotEqualTo(String value) {
            addCriterion("ticked_code <>", value, "tickedCode");
            return (Criteria) this;
        }

        public Criteria andTickedCodeGreaterThan(String value) {
            addCriterion("ticked_code >", value, "tickedCode");
            return (Criteria) this;
        }

        public Criteria andTickedCodeGreaterThanOrEqualTo(String value) {
            addCriterion("ticked_code >=", value, "tickedCode");
            return (Criteria) this;
        }

        public Criteria andTickedCodeLessThan(String value) {
            addCriterion("ticked_code <", value, "tickedCode");
            return (Criteria) this;
        }

        public Criteria andTickedCodeLessThanOrEqualTo(String value) {
            addCriterion("ticked_code <=", value, "tickedCode");
            return (Criteria) this;
        }

        public Criteria andTickedCodeLike(String value) {
            addCriterion("ticked_code like", value, "tickedCode");
            return (Criteria) this;
        }

        public Criteria andTickedCodeNotLike(String value) {
            addCriterion("ticked_code not like", value, "tickedCode");
            return (Criteria) this;
        }

        public Criteria andTickedCodeIn(List<String> values) {
            addCriterion("ticked_code in", values, "tickedCode");
            return (Criteria) this;
        }

        public Criteria andTickedCodeNotIn(List<String> values) {
            addCriterion("ticked_code not in", values, "tickedCode");
            return (Criteria) this;
        }

        public Criteria andTickedCodeBetween(String value1, String value2) {
            addCriterion("ticked_code between", value1, value2, "tickedCode");
            return (Criteria) this;
        }

        public Criteria andTickedCodeNotBetween(String value1, String value2) {
            addCriterion("ticked_code not between", value1, value2, "tickedCode");
            return (Criteria) this;
        }

        public Criteria andTickedEndtimeIsNull() {
            addCriterion("ticked_endtime is null");
            return (Criteria) this;
        }

        public Criteria andTickedEndtimeIsNotNull() {
            addCriterion("ticked_endtime is not null");
            return (Criteria) this;
        }

        public Criteria andTickedEndtimeEqualTo(String value) {
            addCriterion("ticked_endtime =", value, "tickedEndtime");
            return (Criteria) this;
        }

        public Criteria andTickedEndtimeNotEqualTo(String value) {
            addCriterion("ticked_endtime <>", value, "tickedEndtime");
            return (Criteria) this;
        }

        public Criteria andTickedEndtimeGreaterThan(String value) {
            addCriterion("ticked_endtime >", value, "tickedEndtime");
            return (Criteria) this;
        }

        public Criteria andTickedEndtimeGreaterThanOrEqualTo(String value) {
            addCriterion("ticked_endtime >=", value, "tickedEndtime");
            return (Criteria) this;
        }

        public Criteria andTickedEndtimeLessThan(String value) {
            addCriterion("ticked_endtime <", value, "tickedEndtime");
            return (Criteria) this;
        }

        public Criteria andTickedEndtimeLessThanOrEqualTo(String value) {
            addCriterion("ticked_endtime <=", value, "tickedEndtime");
            return (Criteria) this;
        }

        public Criteria andTickedEndtimeLike(String value) {
            addCriterion("ticked_endtime like", value, "tickedEndtime");
            return (Criteria) this;
        }

        public Criteria andTickedEndtimeNotLike(String value) {
            addCriterion("ticked_endtime not like", value, "tickedEndtime");
            return (Criteria) this;
        }

        public Criteria andTickedEndtimeIn(List<String> values) {
            addCriterion("ticked_endtime in", values, "tickedEndtime");
            return (Criteria) this;
        }

        public Criteria andTickedEndtimeNotIn(List<String> values) {
            addCriterion("ticked_endtime not in", values, "tickedEndtime");
            return (Criteria) this;
        }

        public Criteria andTickedEndtimeBetween(String value1, String value2) {
            addCriterion("ticked_endtime between", value1, value2, "tickedEndtime");
            return (Criteria) this;
        }

        public Criteria andTickedEndtimeNotBetween(String value1, String value2) {
            addCriterion("ticked_endtime not between", value1, value2, "tickedEndtime");
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

        public Criteria andTickedImgIsNull() {
            addCriterion("ticked_img is null");
            return (Criteria) this;
        }

        public Criteria andTickedImgIsNotNull() {
            addCriterion("ticked_img is not null");
            return (Criteria) this;
        }

        public Criteria andTickedImgEqualTo(String value) {
            addCriterion("ticked_img =", value, "tickedImg");
            return (Criteria) this;
        }

        public Criteria andTickedImgNotEqualTo(String value) {
            addCriterion("ticked_img <>", value, "tickedImg");
            return (Criteria) this;
        }

        public Criteria andTickedImgGreaterThan(String value) {
            addCriterion("ticked_img >", value, "tickedImg");
            return (Criteria) this;
        }

        public Criteria andTickedImgGreaterThanOrEqualTo(String value) {
            addCriterion("ticked_img >=", value, "tickedImg");
            return (Criteria) this;
        }

        public Criteria andTickedImgLessThan(String value) {
            addCriterion("ticked_img <", value, "tickedImg");
            return (Criteria) this;
        }

        public Criteria andTickedImgLessThanOrEqualTo(String value) {
            addCriterion("ticked_img <=", value, "tickedImg");
            return (Criteria) this;
        }

        public Criteria andTickedImgLike(String value) {
            addCriterion("ticked_img like", value, "tickedImg");
            return (Criteria) this;
        }

        public Criteria andTickedImgNotLike(String value) {
            addCriterion("ticked_img not like", value, "tickedImg");
            return (Criteria) this;
        }

        public Criteria andTickedImgIn(List<String> values) {
            addCriterion("ticked_img in", values, "tickedImg");
            return (Criteria) this;
        }

        public Criteria andTickedImgNotIn(List<String> values) {
            addCriterion("ticked_img not in", values, "tickedImg");
            return (Criteria) this;
        }

        public Criteria andTickedImgBetween(String value1, String value2) {
            addCriterion("ticked_img between", value1, value2, "tickedImg");
            return (Criteria) this;
        }

        public Criteria andTickedImgNotBetween(String value1, String value2) {
            addCriterion("ticked_img not between", value1, value2, "tickedImg");
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