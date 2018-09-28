package com.yc.movie.bean;

import java.util.ArrayList;
import java.util.List;

public class SearchExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SearchExample() {
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

        public Criteria andSearchIdIsNull() {
            addCriterion("search_id is null");
            return (Criteria) this;
        }

        public Criteria andSearchIdIsNotNull() {
            addCriterion("search_id is not null");
            return (Criteria) this;
        }

        public Criteria andSearchIdEqualTo(Integer value) {
            addCriterion("search_id =", value, "searchId");
            return (Criteria) this;
        }

        public Criteria andSearchIdNotEqualTo(Integer value) {
            addCriterion("search_id <>", value, "searchId");
            return (Criteria) this;
        }

        public Criteria andSearchIdGreaterThan(Integer value) {
            addCriterion("search_id >", value, "searchId");
            return (Criteria) this;
        }

        public Criteria andSearchIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("search_id >=", value, "searchId");
            return (Criteria) this;
        }

        public Criteria andSearchIdLessThan(Integer value) {
            addCriterion("search_id <", value, "searchId");
            return (Criteria) this;
        }

        public Criteria andSearchIdLessThanOrEqualTo(Integer value) {
            addCriterion("search_id <=", value, "searchId");
            return (Criteria) this;
        }

        public Criteria andSearchIdIn(List<Integer> values) {
            addCriterion("search_id in", values, "searchId");
            return (Criteria) this;
        }

        public Criteria andSearchIdNotIn(List<Integer> values) {
            addCriterion("search_id not in", values, "searchId");
            return (Criteria) this;
        }

        public Criteria andSearchIdBetween(Integer value1, Integer value2) {
            addCriterion("search_id between", value1, value2, "searchId");
            return (Criteria) this;
        }

        public Criteria andSearchIdNotBetween(Integer value1, Integer value2) {
            addCriterion("search_id not between", value1, value2, "searchId");
            return (Criteria) this;
        }

        public Criteria andSearchContentIsNull() {
            addCriterion("search_content is null");
            return (Criteria) this;
        }

        public Criteria andSearchContentIsNotNull() {
            addCriterion("search_content is not null");
            return (Criteria) this;
        }

        public Criteria andSearchContentEqualTo(String value) {
            addCriterion("search_content =", value, "searchContent");
            return (Criteria) this;
        }

        public Criteria andSearchContentNotEqualTo(String value) {
            addCriterion("search_content <>", value, "searchContent");
            return (Criteria) this;
        }

        public Criteria andSearchContentGreaterThan(String value) {
            addCriterion("search_content >", value, "searchContent");
            return (Criteria) this;
        }

        public Criteria andSearchContentGreaterThanOrEqualTo(String value) {
            addCriterion("search_content >=", value, "searchContent");
            return (Criteria) this;
        }

        public Criteria andSearchContentLessThan(String value) {
            addCriterion("search_content <", value, "searchContent");
            return (Criteria) this;
        }

        public Criteria andSearchContentLessThanOrEqualTo(String value) {
            addCriterion("search_content <=", value, "searchContent");
            return (Criteria) this;
        }

        public Criteria andSearchContentLike(String value) {
            addCriterion("search_content like", value, "searchContent");
            return (Criteria) this;
        }

        public Criteria andSearchContentNotLike(String value) {
            addCriterion("search_content not like", value, "searchContent");
            return (Criteria) this;
        }

        public Criteria andSearchContentIn(List<String> values) {
            addCriterion("search_content in", values, "searchContent");
            return (Criteria) this;
        }

        public Criteria andSearchContentNotIn(List<String> values) {
            addCriterion("search_content not in", values, "searchContent");
            return (Criteria) this;
        }

        public Criteria andSearchContentBetween(String value1, String value2) {
            addCriterion("search_content between", value1, value2, "searchContent");
            return (Criteria) this;
        }

        public Criteria andSearchContentNotBetween(String value1, String value2) {
            addCriterion("search_content not between", value1, value2, "searchContent");
            return (Criteria) this;
        }

        public Criteria andSearchNumIsNull() {
            addCriterion("search_num is null");
            return (Criteria) this;
        }

        public Criteria andSearchNumIsNotNull() {
            addCriterion("search_num is not null");
            return (Criteria) this;
        }

        public Criteria andSearchNumEqualTo(Integer value) {
            addCriterion("search_num =", value, "searchNum");
            return (Criteria) this;
        }

        public Criteria andSearchNumNotEqualTo(Integer value) {
            addCriterion("search_num <>", value, "searchNum");
            return (Criteria) this;
        }

        public Criteria andSearchNumGreaterThan(Integer value) {
            addCriterion("search_num >", value, "searchNum");
            return (Criteria) this;
        }

        public Criteria andSearchNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("search_num >=", value, "searchNum");
            return (Criteria) this;
        }

        public Criteria andSearchNumLessThan(Integer value) {
            addCriterion("search_num <", value, "searchNum");
            return (Criteria) this;
        }

        public Criteria andSearchNumLessThanOrEqualTo(Integer value) {
            addCriterion("search_num <=", value, "searchNum");
            return (Criteria) this;
        }

        public Criteria andSearchNumIn(List<Integer> values) {
            addCriterion("search_num in", values, "searchNum");
            return (Criteria) this;
        }

        public Criteria andSearchNumNotIn(List<Integer> values) {
            addCriterion("search_num not in", values, "searchNum");
            return (Criteria) this;
        }

        public Criteria andSearchNumBetween(Integer value1, Integer value2) {
            addCriterion("search_num between", value1, value2, "searchNum");
            return (Criteria) this;
        }

        public Criteria andSearchNumNotBetween(Integer value1, Integer value2) {
            addCriterion("search_num not between", value1, value2, "searchNum");
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