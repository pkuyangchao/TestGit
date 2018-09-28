package com.yc.movie.bean;

import java.util.ArrayList;
import java.util.List;

public class NewsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public NewsExample() {
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

        public Criteria andNewsIdIsNull() {
            addCriterion("news_id is null");
            return (Criteria) this;
        }

        public Criteria andNewsIdIsNotNull() {
            addCriterion("news_id is not null");
            return (Criteria) this;
        }

        public Criteria andNewsIdEqualTo(Integer value) {
            addCriterion("news_id =", value, "newsId");
            return (Criteria) this;
        }

        public Criteria andNewsIdNotEqualTo(Integer value) {
            addCriterion("news_id <>", value, "newsId");
            return (Criteria) this;
        }

        public Criteria andNewsIdGreaterThan(Integer value) {
            addCriterion("news_id >", value, "newsId");
            return (Criteria) this;
        }

        public Criteria andNewsIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("news_id >=", value, "newsId");
            return (Criteria) this;
        }

        public Criteria andNewsIdLessThan(Integer value) {
            addCriterion("news_id <", value, "newsId");
            return (Criteria) this;
        }

        public Criteria andNewsIdLessThanOrEqualTo(Integer value) {
            addCriterion("news_id <=", value, "newsId");
            return (Criteria) this;
        }

        public Criteria andNewsIdIn(List<Integer> values) {
            addCriterion("news_id in", values, "newsId");
            return (Criteria) this;
        }

        public Criteria andNewsIdNotIn(List<Integer> values) {
            addCriterion("news_id not in", values, "newsId");
            return (Criteria) this;
        }

        public Criteria andNewsIdBetween(Integer value1, Integer value2) {
            addCriterion("news_id between", value1, value2, "newsId");
            return (Criteria) this;
        }

        public Criteria andNewsIdNotBetween(Integer value1, Integer value2) {
            addCriterion("news_id not between", value1, value2, "newsId");
            return (Criteria) this;
        }

        public Criteria andNewsTitleIsNull() {
            addCriterion("news_title is null");
            return (Criteria) this;
        }

        public Criteria andNewsTitleIsNotNull() {
            addCriterion("news_title is not null");
            return (Criteria) this;
        }

        public Criteria andNewsTitleEqualTo(String value) {
            addCriterion("news_title =", value, "newsTitle");
            return (Criteria) this;
        }

        public Criteria andNewsTitleNotEqualTo(String value) {
            addCriterion("news_title <>", value, "newsTitle");
            return (Criteria) this;
        }

        public Criteria andNewsTitleGreaterThan(String value) {
            addCriterion("news_title >", value, "newsTitle");
            return (Criteria) this;
        }

        public Criteria andNewsTitleGreaterThanOrEqualTo(String value) {
            addCriterion("news_title >=", value, "newsTitle");
            return (Criteria) this;
        }

        public Criteria andNewsTitleLessThan(String value) {
            addCriterion("news_title <", value, "newsTitle");
            return (Criteria) this;
        }

        public Criteria andNewsTitleLessThanOrEqualTo(String value) {
            addCriterion("news_title <=", value, "newsTitle");
            return (Criteria) this;
        }

        public Criteria andNewsTitleLike(String value) {
            addCriterion("news_title like", value, "newsTitle");
            return (Criteria) this;
        }

        public Criteria andNewsTitleNotLike(String value) {
            addCriterion("news_title not like", value, "newsTitle");
            return (Criteria) this;
        }

        public Criteria andNewsTitleIn(List<String> values) {
            addCriterion("news_title in", values, "newsTitle");
            return (Criteria) this;
        }

        public Criteria andNewsTitleNotIn(List<String> values) {
            addCriterion("news_title not in", values, "newsTitle");
            return (Criteria) this;
        }

        public Criteria andNewsTitleBetween(String value1, String value2) {
            addCriterion("news_title between", value1, value2, "newsTitle");
            return (Criteria) this;
        }

        public Criteria andNewsTitleNotBetween(String value1, String value2) {
            addCriterion("news_title not between", value1, value2, "newsTitle");
            return (Criteria) this;
        }

        public Criteria andNewsTimeIsNull() {
            addCriterion("news_time is null");
            return (Criteria) this;
        }

        public Criteria andNewsTimeIsNotNull() {
            addCriterion("news_time is not null");
            return (Criteria) this;
        }

        public Criteria andNewsTimeEqualTo(String value) {
            addCriterion("news_time =", value, "newsTime");
            return (Criteria) this;
        }

        public Criteria andNewsTimeNotEqualTo(String value) {
            addCriterion("news_time <>", value, "newsTime");
            return (Criteria) this;
        }

        public Criteria andNewsTimeGreaterThan(String value) {
            addCriterion("news_time >", value, "newsTime");
            return (Criteria) this;
        }

        public Criteria andNewsTimeGreaterThanOrEqualTo(String value) {
            addCriterion("news_time >=", value, "newsTime");
            return (Criteria) this;
        }

        public Criteria andNewsTimeLessThan(String value) {
            addCriterion("news_time <", value, "newsTime");
            return (Criteria) this;
        }

        public Criteria andNewsTimeLessThanOrEqualTo(String value) {
            addCriterion("news_time <=", value, "newsTime");
            return (Criteria) this;
        }

        public Criteria andNewsTimeLike(String value) {
            addCriterion("news_time like", value, "newsTime");
            return (Criteria) this;
        }

        public Criteria andNewsTimeNotLike(String value) {
            addCriterion("news_time not like", value, "newsTime");
            return (Criteria) this;
        }

        public Criteria andNewsTimeIn(List<String> values) {
            addCriterion("news_time in", values, "newsTime");
            return (Criteria) this;
        }

        public Criteria andNewsTimeNotIn(List<String> values) {
            addCriterion("news_time not in", values, "newsTime");
            return (Criteria) this;
        }

        public Criteria andNewsTimeBetween(String value1, String value2) {
            addCriterion("news_time between", value1, value2, "newsTime");
            return (Criteria) this;
        }

        public Criteria andNewsTimeNotBetween(String value1, String value2) {
            addCriterion("news_time not between", value1, value2, "newsTime");
            return (Criteria) this;
        }

        public Criteria andNewsLookcountIsNull() {
            addCriterion("news_lookcount is null");
            return (Criteria) this;
        }

        public Criteria andNewsLookcountIsNotNull() {
            addCriterion("news_lookcount is not null");
            return (Criteria) this;
        }

        public Criteria andNewsLookcountEqualTo(Integer value) {
            addCriterion("news_lookcount =", value, "newsLookcount");
            return (Criteria) this;
        }

        public Criteria andNewsLookcountNotEqualTo(Integer value) {
            addCriterion("news_lookcount <>", value, "newsLookcount");
            return (Criteria) this;
        }

        public Criteria andNewsLookcountGreaterThan(Integer value) {
            addCriterion("news_lookcount >", value, "newsLookcount");
            return (Criteria) this;
        }

        public Criteria andNewsLookcountGreaterThanOrEqualTo(Integer value) {
            addCriterion("news_lookcount >=", value, "newsLookcount");
            return (Criteria) this;
        }

        public Criteria andNewsLookcountLessThan(Integer value) {
            addCriterion("news_lookcount <", value, "newsLookcount");
            return (Criteria) this;
        }

        public Criteria andNewsLookcountLessThanOrEqualTo(Integer value) {
            addCriterion("news_lookcount <=", value, "newsLookcount");
            return (Criteria) this;
        }

        public Criteria andNewsLookcountIn(List<Integer> values) {
            addCriterion("news_lookcount in", values, "newsLookcount");
            return (Criteria) this;
        }

        public Criteria andNewsLookcountNotIn(List<Integer> values) {
            addCriterion("news_lookcount not in", values, "newsLookcount");
            return (Criteria) this;
        }

        public Criteria andNewsLookcountBetween(Integer value1, Integer value2) {
            addCriterion("news_lookcount between", value1, value2, "newsLookcount");
            return (Criteria) this;
        }

        public Criteria andNewsLookcountNotBetween(Integer value1, Integer value2) {
            addCriterion("news_lookcount not between", value1, value2, "newsLookcount");
            return (Criteria) this;
        }

        public Criteria andNewsPictureIsNull() {
            addCriterion("news_picture is null");
            return (Criteria) this;
        }

        public Criteria andNewsPictureIsNotNull() {
            addCriterion("news_picture is not null");
            return (Criteria) this;
        }

        public Criteria andNewsPictureEqualTo(String value) {
            addCriterion("news_picture =", value, "newsPicture");
            return (Criteria) this;
        }

        public Criteria andNewsPictureNotEqualTo(String value) {
            addCriterion("news_picture <>", value, "newsPicture");
            return (Criteria) this;
        }

        public Criteria andNewsPictureGreaterThan(String value) {
            addCriterion("news_picture >", value, "newsPicture");
            return (Criteria) this;
        }

        public Criteria andNewsPictureGreaterThanOrEqualTo(String value) {
            addCriterion("news_picture >=", value, "newsPicture");
            return (Criteria) this;
        }

        public Criteria andNewsPictureLessThan(String value) {
            addCriterion("news_picture <", value, "newsPicture");
            return (Criteria) this;
        }

        public Criteria andNewsPictureLessThanOrEqualTo(String value) {
            addCriterion("news_picture <=", value, "newsPicture");
            return (Criteria) this;
        }

        public Criteria andNewsPictureLike(String value) {
            addCriterion("news_picture like", value, "newsPicture");
            return (Criteria) this;
        }

        public Criteria andNewsPictureNotLike(String value) {
            addCriterion("news_picture not like", value, "newsPicture");
            return (Criteria) this;
        }

        public Criteria andNewsPictureIn(List<String> values) {
            addCriterion("news_picture in", values, "newsPicture");
            return (Criteria) this;
        }

        public Criteria andNewsPictureNotIn(List<String> values) {
            addCriterion("news_picture not in", values, "newsPicture");
            return (Criteria) this;
        }

        public Criteria andNewsPictureBetween(String value1, String value2) {
            addCriterion("news_picture between", value1, value2, "newsPicture");
            return (Criteria) this;
        }

        public Criteria andNewsPictureNotBetween(String value1, String value2) {
            addCriterion("news_picture not between", value1, value2, "newsPicture");
            return (Criteria) this;
        }

        public Criteria andNewsMovieIsNull() {
            addCriterion("news_movie is null");
            return (Criteria) this;
        }

        public Criteria andNewsMovieIsNotNull() {
            addCriterion("news_movie is not null");
            return (Criteria) this;
        }

        public Criteria andNewsMovieEqualTo(Integer value) {
            addCriterion("news_movie =", value, "newsMovie");
            return (Criteria) this;
        }

        public Criteria andNewsMovieNotEqualTo(Integer value) {
            addCriterion("news_movie <>", value, "newsMovie");
            return (Criteria) this;
        }

        public Criteria andNewsMovieGreaterThan(Integer value) {
            addCriterion("news_movie >", value, "newsMovie");
            return (Criteria) this;
        }

        public Criteria andNewsMovieGreaterThanOrEqualTo(Integer value) {
            addCriterion("news_movie >=", value, "newsMovie");
            return (Criteria) this;
        }

        public Criteria andNewsMovieLessThan(Integer value) {
            addCriterion("news_movie <", value, "newsMovie");
            return (Criteria) this;
        }

        public Criteria andNewsMovieLessThanOrEqualTo(Integer value) {
            addCriterion("news_movie <=", value, "newsMovie");
            return (Criteria) this;
        }

        public Criteria andNewsMovieIn(List<Integer> values) {
            addCriterion("news_movie in", values, "newsMovie");
            return (Criteria) this;
        }

        public Criteria andNewsMovieNotIn(List<Integer> values) {
            addCriterion("news_movie not in", values, "newsMovie");
            return (Criteria) this;
        }

        public Criteria andNewsMovieBetween(Integer value1, Integer value2) {
            addCriterion("news_movie between", value1, value2, "newsMovie");
            return (Criteria) this;
        }

        public Criteria andNewsMovieNotBetween(Integer value1, Integer value2) {
            addCriterion("news_movie not between", value1, value2, "newsMovie");
            return (Criteria) this;
        }

        public Criteria andNewsStateIsNull() {
            addCriterion("news_state is null");
            return (Criteria) this;
        }

        public Criteria andNewsStateIsNotNull() {
            addCriterion("news_state is not null");
            return (Criteria) this;
        }

        public Criteria andNewsStateEqualTo(String value) {
            addCriterion("news_state =", value, "newsState");
            return (Criteria) this;
        }

        public Criteria andNewsStateNotEqualTo(String value) {
            addCriterion("news_state <>", value, "newsState");
            return (Criteria) this;
        }

        public Criteria andNewsStateGreaterThan(String value) {
            addCriterion("news_state >", value, "newsState");
            return (Criteria) this;
        }

        public Criteria andNewsStateGreaterThanOrEqualTo(String value) {
            addCriterion("news_state >=", value, "newsState");
            return (Criteria) this;
        }

        public Criteria andNewsStateLessThan(String value) {
            addCriterion("news_state <", value, "newsState");
            return (Criteria) this;
        }

        public Criteria andNewsStateLessThanOrEqualTo(String value) {
            addCriterion("news_state <=", value, "newsState");
            return (Criteria) this;
        }

        public Criteria andNewsStateLike(String value) {
            addCriterion("news_state like", value, "newsState");
            return (Criteria) this;
        }

        public Criteria andNewsStateNotLike(String value) {
            addCriterion("news_state not like", value, "newsState");
            return (Criteria) this;
        }

        public Criteria andNewsStateIn(List<String> values) {
            addCriterion("news_state in", values, "newsState");
            return (Criteria) this;
        }

        public Criteria andNewsStateNotIn(List<String> values) {
            addCriterion("news_state not in", values, "newsState");
            return (Criteria) this;
        }

        public Criteria andNewsStateBetween(String value1, String value2) {
            addCriterion("news_state between", value1, value2, "newsState");
            return (Criteria) this;
        }

        public Criteria andNewsStateNotBetween(String value1, String value2) {
            addCriterion("news_state not between", value1, value2, "newsState");
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