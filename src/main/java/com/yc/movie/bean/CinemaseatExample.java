package com.yc.movie.bean;

import java.util.ArrayList;
import java.util.List;

public class CinemaseatExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CinemaseatExample() {
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

        public Criteria andSeatIdIsNull() {
            addCriterion("seat_id is null");
            return (Criteria) this;
        }

        public Criteria andSeatIdIsNotNull() {
            addCriterion("seat_id is not null");
            return (Criteria) this;
        }

        public Criteria andSeatIdEqualTo(Integer value) {
            addCriterion("seat_id =", value, "seatId");
            return (Criteria) this;
        }

        public Criteria andSeatIdNotEqualTo(Integer value) {
            addCriterion("seat_id <>", value, "seatId");
            return (Criteria) this;
        }

        public Criteria andSeatIdGreaterThan(Integer value) {
            addCriterion("seat_id >", value, "seatId");
            return (Criteria) this;
        }

        public Criteria andSeatIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("seat_id >=", value, "seatId");
            return (Criteria) this;
        }

        public Criteria andSeatIdLessThan(Integer value) {
            addCriterion("seat_id <", value, "seatId");
            return (Criteria) this;
        }

        public Criteria andSeatIdLessThanOrEqualTo(Integer value) {
            addCriterion("seat_id <=", value, "seatId");
            return (Criteria) this;
        }

        public Criteria andSeatIdIn(List<Integer> values) {
            addCriterion("seat_id in", values, "seatId");
            return (Criteria) this;
        }

        public Criteria andSeatIdNotIn(List<Integer> values) {
            addCriterion("seat_id not in", values, "seatId");
            return (Criteria) this;
        }

        public Criteria andSeatIdBetween(Integer value1, Integer value2) {
            addCriterion("seat_id between", value1, value2, "seatId");
            return (Criteria) this;
        }

        public Criteria andSeatIdNotBetween(Integer value1, Integer value2) {
            addCriterion("seat_id not between", value1, value2, "seatId");
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

        public Criteria andSeatStateIsNull() {
            addCriterion("seat_state is null");
            return (Criteria) this;
        }

        public Criteria andSeatStateIsNotNull() {
            addCriterion("seat_state is not null");
            return (Criteria) this;
        }

        public Criteria andSeatStateEqualTo(String value) {
            addCriterion("seat_state =", value, "seatState");
            return (Criteria) this;
        }

        public Criteria andSeatStateNotEqualTo(String value) {
            addCriterion("seat_state <>", value, "seatState");
            return (Criteria) this;
        }

        public Criteria andSeatStateGreaterThan(String value) {
            addCriterion("seat_state >", value, "seatState");
            return (Criteria) this;
        }

        public Criteria andSeatStateGreaterThanOrEqualTo(String value) {
            addCriterion("seat_state >=", value, "seatState");
            return (Criteria) this;
        }

        public Criteria andSeatStateLessThan(String value) {
            addCriterion("seat_state <", value, "seatState");
            return (Criteria) this;
        }

        public Criteria andSeatStateLessThanOrEqualTo(String value) {
            addCriterion("seat_state <=", value, "seatState");
            return (Criteria) this;
        }

        public Criteria andSeatStateLike(String value) {
            addCriterion("seat_state like", value, "seatState");
            return (Criteria) this;
        }

        public Criteria andSeatStateNotLike(String value) {
            addCriterion("seat_state not like", value, "seatState");
            return (Criteria) this;
        }

        public Criteria andSeatStateIn(List<String> values) {
            addCriterion("seat_state in", values, "seatState");
            return (Criteria) this;
        }

        public Criteria andSeatStateNotIn(List<String> values) {
            addCriterion("seat_state not in", values, "seatState");
            return (Criteria) this;
        }

        public Criteria andSeatStateBetween(String value1, String value2) {
            addCriterion("seat_state between", value1, value2, "seatState");
            return (Criteria) this;
        }

        public Criteria andSeatStateNotBetween(String value1, String value2) {
            addCriterion("seat_state not between", value1, value2, "seatState");
            return (Criteria) this;
        }

        public Criteria andSeatRowIsNull() {
            addCriterion("seat_row is null");
            return (Criteria) this;
        }

        public Criteria andSeatRowIsNotNull() {
            addCriterion("seat_row is not null");
            return (Criteria) this;
        }

        public Criteria andSeatRowEqualTo(Integer value) {
            addCriterion("seat_row =", value, "seatRow");
            return (Criteria) this;
        }

        public Criteria andSeatRowNotEqualTo(Integer value) {
            addCriterion("seat_row <>", value, "seatRow");
            return (Criteria) this;
        }

        public Criteria andSeatRowGreaterThan(Integer value) {
            addCriterion("seat_row >", value, "seatRow");
            return (Criteria) this;
        }

        public Criteria andSeatRowGreaterThanOrEqualTo(Integer value) {
            addCriterion("seat_row >=", value, "seatRow");
            return (Criteria) this;
        }

        public Criteria andSeatRowLessThan(Integer value) {
            addCriterion("seat_row <", value, "seatRow");
            return (Criteria) this;
        }

        public Criteria andSeatRowLessThanOrEqualTo(Integer value) {
            addCriterion("seat_row <=", value, "seatRow");
            return (Criteria) this;
        }

        public Criteria andSeatRowIn(List<Integer> values) {
            addCriterion("seat_row in", values, "seatRow");
            return (Criteria) this;
        }

        public Criteria andSeatRowNotIn(List<Integer> values) {
            addCriterion("seat_row not in", values, "seatRow");
            return (Criteria) this;
        }

        public Criteria andSeatRowBetween(Integer value1, Integer value2) {
            addCriterion("seat_row between", value1, value2, "seatRow");
            return (Criteria) this;
        }

        public Criteria andSeatRowNotBetween(Integer value1, Integer value2) {
            addCriterion("seat_row not between", value1, value2, "seatRow");
            return (Criteria) this;
        }

        public Criteria andSeatColumnIsNull() {
            addCriterion("seat_column is null");
            return (Criteria) this;
        }

        public Criteria andSeatColumnIsNotNull() {
            addCriterion("seat_column is not null");
            return (Criteria) this;
        }

        public Criteria andSeatColumnEqualTo(Integer value) {
            addCriterion("seat_column =", value, "seatColumn");
            return (Criteria) this;
        }

        public Criteria andSeatColumnNotEqualTo(Integer value) {
            addCriterion("seat_column <>", value, "seatColumn");
            return (Criteria) this;
        }

        public Criteria andSeatColumnGreaterThan(Integer value) {
            addCriterion("seat_column >", value, "seatColumn");
            return (Criteria) this;
        }

        public Criteria andSeatColumnGreaterThanOrEqualTo(Integer value) {
            addCriterion("seat_column >=", value, "seatColumn");
            return (Criteria) this;
        }

        public Criteria andSeatColumnLessThan(Integer value) {
            addCriterion("seat_column <", value, "seatColumn");
            return (Criteria) this;
        }

        public Criteria andSeatColumnLessThanOrEqualTo(Integer value) {
            addCriterion("seat_column <=", value, "seatColumn");
            return (Criteria) this;
        }

        public Criteria andSeatColumnIn(List<Integer> values) {
            addCriterion("seat_column in", values, "seatColumn");
            return (Criteria) this;
        }

        public Criteria andSeatColumnNotIn(List<Integer> values) {
            addCriterion("seat_column not in", values, "seatColumn");
            return (Criteria) this;
        }

        public Criteria andSeatColumnBetween(Integer value1, Integer value2) {
            addCriterion("seat_column between", value1, value2, "seatColumn");
            return (Criteria) this;
        }

        public Criteria andSeatColumnNotBetween(Integer value1, Integer value2) {
            addCriterion("seat_column not between", value1, value2, "seatColumn");
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