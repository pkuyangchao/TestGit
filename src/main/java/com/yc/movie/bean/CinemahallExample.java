package com.yc.movie.bean;

import java.util.ArrayList;
import java.util.List;

public class CinemahallExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CinemahallExample() {
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

        public Criteria andHallNameIsNull() {
            addCriterion("hall_name is null");
            return (Criteria) this;
        }

        public Criteria andHallNameIsNotNull() {
            addCriterion("hall_name is not null");
            return (Criteria) this;
        }

        public Criteria andHallNameEqualTo(String value) {
            addCriterion("hall_name =", value, "hallName");
            return (Criteria) this;
        }

        public Criteria andHallNameNotEqualTo(String value) {
            addCriterion("hall_name <>", value, "hallName");
            return (Criteria) this;
        }

        public Criteria andHallNameGreaterThan(String value) {
            addCriterion("hall_name >", value, "hallName");
            return (Criteria) this;
        }

        public Criteria andHallNameGreaterThanOrEqualTo(String value) {
            addCriterion("hall_name >=", value, "hallName");
            return (Criteria) this;
        }

        public Criteria andHallNameLessThan(String value) {
            addCriterion("hall_name <", value, "hallName");
            return (Criteria) this;
        }

        public Criteria andHallNameLessThanOrEqualTo(String value) {
            addCriterion("hall_name <=", value, "hallName");
            return (Criteria) this;
        }

        public Criteria andHallNameLike(String value) {
            addCriterion("hall_name like", value, "hallName");
            return (Criteria) this;
        }

        public Criteria andHallNameNotLike(String value) {
            addCriterion("hall_name not like", value, "hallName");
            return (Criteria) this;
        }

        public Criteria andHallNameIn(List<String> values) {
            addCriterion("hall_name in", values, "hallName");
            return (Criteria) this;
        }

        public Criteria andHallNameNotIn(List<String> values) {
            addCriterion("hall_name not in", values, "hallName");
            return (Criteria) this;
        }

        public Criteria andHallNameBetween(String value1, String value2) {
            addCriterion("hall_name between", value1, value2, "hallName");
            return (Criteria) this;
        }

        public Criteria andHallNameNotBetween(String value1, String value2) {
            addCriterion("hall_name not between", value1, value2, "hallName");
            return (Criteria) this;
        }

        public Criteria andHallRowsIsNull() {
            addCriterion("hall_rows is null");
            return (Criteria) this;
        }

        public Criteria andHallRowsIsNotNull() {
            addCriterion("hall_rows is not null");
            return (Criteria) this;
        }

        public Criteria andHallRowsEqualTo(Integer value) {
            addCriterion("hall_rows =", value, "hallRows");
            return (Criteria) this;
        }

        public Criteria andHallRowsNotEqualTo(Integer value) {
            addCriterion("hall_rows <>", value, "hallRows");
            return (Criteria) this;
        }

        public Criteria andHallRowsGreaterThan(Integer value) {
            addCriterion("hall_rows >", value, "hallRows");
            return (Criteria) this;
        }

        public Criteria andHallRowsGreaterThanOrEqualTo(Integer value) {
            addCriterion("hall_rows >=", value, "hallRows");
            return (Criteria) this;
        }

        public Criteria andHallRowsLessThan(Integer value) {
            addCriterion("hall_rows <", value, "hallRows");
            return (Criteria) this;
        }

        public Criteria andHallRowsLessThanOrEqualTo(Integer value) {
            addCriterion("hall_rows <=", value, "hallRows");
            return (Criteria) this;
        }

        public Criteria andHallRowsIn(List<Integer> values) {
            addCriterion("hall_rows in", values, "hallRows");
            return (Criteria) this;
        }

        public Criteria andHallRowsNotIn(List<Integer> values) {
            addCriterion("hall_rows not in", values, "hallRows");
            return (Criteria) this;
        }

        public Criteria andHallRowsBetween(Integer value1, Integer value2) {
            addCriterion("hall_rows between", value1, value2, "hallRows");
            return (Criteria) this;
        }

        public Criteria andHallRowsNotBetween(Integer value1, Integer value2) {
            addCriterion("hall_rows not between", value1, value2, "hallRows");
            return (Criteria) this;
        }

        public Criteria andHallColumnsIsNull() {
            addCriterion("hall_columns is null");
            return (Criteria) this;
        }

        public Criteria andHallColumnsIsNotNull() {
            addCriterion("hall_columns is not null");
            return (Criteria) this;
        }

        public Criteria andHallColumnsEqualTo(Integer value) {
            addCriterion("hall_columns =", value, "hallColumns");
            return (Criteria) this;
        }

        public Criteria andHallColumnsNotEqualTo(Integer value) {
            addCriterion("hall_columns <>", value, "hallColumns");
            return (Criteria) this;
        }

        public Criteria andHallColumnsGreaterThan(Integer value) {
            addCriterion("hall_columns >", value, "hallColumns");
            return (Criteria) this;
        }

        public Criteria andHallColumnsGreaterThanOrEqualTo(Integer value) {
            addCriterion("hall_columns >=", value, "hallColumns");
            return (Criteria) this;
        }

        public Criteria andHallColumnsLessThan(Integer value) {
            addCriterion("hall_columns <", value, "hallColumns");
            return (Criteria) this;
        }

        public Criteria andHallColumnsLessThanOrEqualTo(Integer value) {
            addCriterion("hall_columns <=", value, "hallColumns");
            return (Criteria) this;
        }

        public Criteria andHallColumnsIn(List<Integer> values) {
            addCriterion("hall_columns in", values, "hallColumns");
            return (Criteria) this;
        }

        public Criteria andHallColumnsNotIn(List<Integer> values) {
            addCriterion("hall_columns not in", values, "hallColumns");
            return (Criteria) this;
        }

        public Criteria andHallColumnsBetween(Integer value1, Integer value2) {
            addCriterion("hall_columns between", value1, value2, "hallColumns");
            return (Criteria) this;
        }

        public Criteria andHallColumnsNotBetween(Integer value1, Integer value2) {
            addCriterion("hall_columns not between", value1, value2, "hallColumns");
            return (Criteria) this;
        }

        public Criteria andHallTypeIsNull() {
            addCriterion("hall_type is null");
            return (Criteria) this;
        }

        public Criteria andHallTypeIsNotNull() {
            addCriterion("hall_type is not null");
            return (Criteria) this;
        }

        public Criteria andHallTypeEqualTo(String value) {
            addCriterion("hall_type =", value, "hallType");
            return (Criteria) this;
        }

        public Criteria andHallTypeNotEqualTo(String value) {
            addCriterion("hall_type <>", value, "hallType");
            return (Criteria) this;
        }

        public Criteria andHallTypeGreaterThan(String value) {
            addCriterion("hall_type >", value, "hallType");
            return (Criteria) this;
        }

        public Criteria andHallTypeGreaterThanOrEqualTo(String value) {
            addCriterion("hall_type >=", value, "hallType");
            return (Criteria) this;
        }

        public Criteria andHallTypeLessThan(String value) {
            addCriterion("hall_type <", value, "hallType");
            return (Criteria) this;
        }

        public Criteria andHallTypeLessThanOrEqualTo(String value) {
            addCriterion("hall_type <=", value, "hallType");
            return (Criteria) this;
        }

        public Criteria andHallTypeLike(String value) {
            addCriterion("hall_type like", value, "hallType");
            return (Criteria) this;
        }

        public Criteria andHallTypeNotLike(String value) {
            addCriterion("hall_type not like", value, "hallType");
            return (Criteria) this;
        }

        public Criteria andHallTypeIn(List<String> values) {
            addCriterion("hall_type in", values, "hallType");
            return (Criteria) this;
        }

        public Criteria andHallTypeNotIn(List<String> values) {
            addCriterion("hall_type not in", values, "hallType");
            return (Criteria) this;
        }

        public Criteria andHallTypeBetween(String value1, String value2) {
            addCriterion("hall_type between", value1, value2, "hallType");
            return (Criteria) this;
        }

        public Criteria andHallTypeNotBetween(String value1, String value2) {
            addCriterion("hall_type not between", value1, value2, "hallType");
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