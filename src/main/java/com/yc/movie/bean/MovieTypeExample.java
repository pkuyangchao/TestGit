package com.yc.movie.bean;

import java.util.ArrayList;
import java.util.List;

public class MovieTypeExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MovieTypeExample() {
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

        public Criteria andMovieTypeIdIsNull() {
            addCriterion("movie_type_id is null");
            return (Criteria) this;
        }

        public Criteria andMovieTypeIdIsNotNull() {
            addCriterion("movie_type_id is not null");
            return (Criteria) this;
        }

        public Criteria andMovieTypeIdEqualTo(Integer value) {
            addCriterion("movie_type_id =", value, "movieTypeId");
            return (Criteria) this;
        }

        public Criteria andMovieTypeIdNotEqualTo(Integer value) {
            addCriterion("movie_type_id <>", value, "movieTypeId");
            return (Criteria) this;
        }

        public Criteria andMovieTypeIdGreaterThan(Integer value) {
            addCriterion("movie_type_id >", value, "movieTypeId");
            return (Criteria) this;
        }

        public Criteria andMovieTypeIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("movie_type_id >=", value, "movieTypeId");
            return (Criteria) this;
        }

        public Criteria andMovieTypeIdLessThan(Integer value) {
            addCriterion("movie_type_id <", value, "movieTypeId");
            return (Criteria) this;
        }

        public Criteria andMovieTypeIdLessThanOrEqualTo(Integer value) {
            addCriterion("movie_type_id <=", value, "movieTypeId");
            return (Criteria) this;
        }

        public Criteria andMovieTypeIdIn(List<Integer> values) {
            addCriterion("movie_type_id in", values, "movieTypeId");
            return (Criteria) this;
        }

        public Criteria andMovieTypeIdNotIn(List<Integer> values) {
            addCriterion("movie_type_id not in", values, "movieTypeId");
            return (Criteria) this;
        }

        public Criteria andMovieTypeIdBetween(Integer value1, Integer value2) {
            addCriterion("movie_type_id between", value1, value2, "movieTypeId");
            return (Criteria) this;
        }

        public Criteria andMovieTypeIdNotBetween(Integer value1, Integer value2) {
            addCriterion("movie_type_id not between", value1, value2, "movieTypeId");
            return (Criteria) this;
        }

        public Criteria andMovieTypeNameIsNull() {
            addCriterion("movie_type_name is null");
            return (Criteria) this;
        }

        public Criteria andMovieTypeNameIsNotNull() {
            addCriterion("movie_type_name is not null");
            return (Criteria) this;
        }

        public Criteria andMovieTypeNameEqualTo(String value) {
            addCriterion("movie_type_name =", value, "movieTypeName");
            return (Criteria) this;
        }

        public Criteria andMovieTypeNameNotEqualTo(String value) {
            addCriterion("movie_type_name <>", value, "movieTypeName");
            return (Criteria) this;
        }

        public Criteria andMovieTypeNameGreaterThan(String value) {
            addCriterion("movie_type_name >", value, "movieTypeName");
            return (Criteria) this;
        }

        public Criteria andMovieTypeNameGreaterThanOrEqualTo(String value) {
            addCriterion("movie_type_name >=", value, "movieTypeName");
            return (Criteria) this;
        }

        public Criteria andMovieTypeNameLessThan(String value) {
            addCriterion("movie_type_name <", value, "movieTypeName");
            return (Criteria) this;
        }

        public Criteria andMovieTypeNameLessThanOrEqualTo(String value) {
            addCriterion("movie_type_name <=", value, "movieTypeName");
            return (Criteria) this;
        }

        public Criteria andMovieTypeNameLike(String value) {
            addCriterion("movie_type_name like", value, "movieTypeName");
            return (Criteria) this;
        }

        public Criteria andMovieTypeNameNotLike(String value) {
            addCriterion("movie_type_name not like", value, "movieTypeName");
            return (Criteria) this;
        }

        public Criteria andMovieTypeNameIn(List<String> values) {
            addCriterion("movie_type_name in", values, "movieTypeName");
            return (Criteria) this;
        }

        public Criteria andMovieTypeNameNotIn(List<String> values) {
            addCriterion("movie_type_name not in", values, "movieTypeName");
            return (Criteria) this;
        }

        public Criteria andMovieTypeNameBetween(String value1, String value2) {
            addCriterion("movie_type_name between", value1, value2, "movieTypeName");
            return (Criteria) this;
        }

        public Criteria andMovieTypeNameNotBetween(String value1, String value2) {
            addCriterion("movie_type_name not between", value1, value2, "movieTypeName");
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