package com.yc.movie.bean;

import java.util.ArrayList;
import java.util.List;

public class CinemaExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CinemaExample() {
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

        public Criteria andCinemaNameIsNull() {
            addCriterion("cinema_name is null");
            return (Criteria) this;
        }

        public Criteria andCinemaNameIsNotNull() {
            addCriterion("cinema_name is not null");
            return (Criteria) this;
        }

        public Criteria andCinemaNameEqualTo(String value) {
            addCriterion("cinema_name =", value, "cinemaName");
            return (Criteria) this;
        }

        public Criteria andCinemaNameNotEqualTo(String value) {
            addCriterion("cinema_name <>", value, "cinemaName");
            return (Criteria) this;
        }

        public Criteria andCinemaNameGreaterThan(String value) {
            addCriterion("cinema_name >", value, "cinemaName");
            return (Criteria) this;
        }

        public Criteria andCinemaNameGreaterThanOrEqualTo(String value) {
            addCriterion("cinema_name >=", value, "cinemaName");
            return (Criteria) this;
        }

        public Criteria andCinemaNameLessThan(String value) {
            addCriterion("cinema_name <", value, "cinemaName");
            return (Criteria) this;
        }

        public Criteria andCinemaNameLessThanOrEqualTo(String value) {
            addCriterion("cinema_name <=", value, "cinemaName");
            return (Criteria) this;
        }

        public Criteria andCinemaNameLike(String value) {
            addCriterion("cinema_name like", value, "cinemaName");
            return (Criteria) this;
        }

        public Criteria andCinemaNameNotLike(String value) {
            addCriterion("cinema_name not like", value, "cinemaName");
            return (Criteria) this;
        }

        public Criteria andCinemaNameIn(List<String> values) {
            addCriterion("cinema_name in", values, "cinemaName");
            return (Criteria) this;
        }

        public Criteria andCinemaNameNotIn(List<String> values) {
            addCriterion("cinema_name not in", values, "cinemaName");
            return (Criteria) this;
        }

        public Criteria andCinemaNameBetween(String value1, String value2) {
            addCriterion("cinema_name between", value1, value2, "cinemaName");
            return (Criteria) this;
        }

        public Criteria andCinemaNameNotBetween(String value1, String value2) {
            addCriterion("cinema_name not between", value1, value2, "cinemaName");
            return (Criteria) this;
        }

        public Criteria andCinemaAreaIsNull() {
            addCriterion("cinema_area is null");
            return (Criteria) this;
        }

        public Criteria andCinemaAreaIsNotNull() {
            addCriterion("cinema_area is not null");
            return (Criteria) this;
        }

        public Criteria andCinemaAreaEqualTo(String value) {
            addCriterion("cinema_area =", value, "cinemaArea");
            return (Criteria) this;
        }

        public Criteria andCinemaAreaNotEqualTo(String value) {
            addCriterion("cinema_area <>", value, "cinemaArea");
            return (Criteria) this;
        }

        public Criteria andCinemaAreaGreaterThan(String value) {
            addCriterion("cinema_area >", value, "cinemaArea");
            return (Criteria) this;
        }

        public Criteria andCinemaAreaGreaterThanOrEqualTo(String value) {
            addCriterion("cinema_area >=", value, "cinemaArea");
            return (Criteria) this;
        }

        public Criteria andCinemaAreaLessThan(String value) {
            addCriterion("cinema_area <", value, "cinemaArea");
            return (Criteria) this;
        }

        public Criteria andCinemaAreaLessThanOrEqualTo(String value) {
            addCriterion("cinema_area <=", value, "cinemaArea");
            return (Criteria) this;
        }

        public Criteria andCinemaAreaLike(String value) {
            addCriterion("cinema_area like", value, "cinemaArea");
            return (Criteria) this;
        }

        public Criteria andCinemaAreaNotLike(String value) {
            addCriterion("cinema_area not like", value, "cinemaArea");
            return (Criteria) this;
        }

        public Criteria andCinemaAreaIn(List<String> values) {
            addCriterion("cinema_area in", values, "cinemaArea");
            return (Criteria) this;
        }

        public Criteria andCinemaAreaNotIn(List<String> values) {
            addCriterion("cinema_area not in", values, "cinemaArea");
            return (Criteria) this;
        }

        public Criteria andCinemaAreaBetween(String value1, String value2) {
            addCriterion("cinema_area between", value1, value2, "cinemaArea");
            return (Criteria) this;
        }

        public Criteria andCinemaAreaNotBetween(String value1, String value2) {
            addCriterion("cinema_area not between", value1, value2, "cinemaArea");
            return (Criteria) this;
        }

        public Criteria andCinemaImgIsNull() {
            addCriterion("cinema_img is null");
            return (Criteria) this;
        }

        public Criteria andCinemaImgIsNotNull() {
            addCriterion("cinema_img is not null");
            return (Criteria) this;
        }

        public Criteria andCinemaImgEqualTo(String value) {
            addCriterion("cinema_img =", value, "cinemaImg");
            return (Criteria) this;
        }

        public Criteria andCinemaImgNotEqualTo(String value) {
            addCriterion("cinema_img <>", value, "cinemaImg");
            return (Criteria) this;
        }

        public Criteria andCinemaImgGreaterThan(String value) {
            addCriterion("cinema_img >", value, "cinemaImg");
            return (Criteria) this;
        }

        public Criteria andCinemaImgGreaterThanOrEqualTo(String value) {
            addCriterion("cinema_img >=", value, "cinemaImg");
            return (Criteria) this;
        }

        public Criteria andCinemaImgLessThan(String value) {
            addCriterion("cinema_img <", value, "cinemaImg");
            return (Criteria) this;
        }

        public Criteria andCinemaImgLessThanOrEqualTo(String value) {
            addCriterion("cinema_img <=", value, "cinemaImg");
            return (Criteria) this;
        }

        public Criteria andCinemaImgLike(String value) {
            addCriterion("cinema_img like", value, "cinemaImg");
            return (Criteria) this;
        }

        public Criteria andCinemaImgNotLike(String value) {
            addCriterion("cinema_img not like", value, "cinemaImg");
            return (Criteria) this;
        }

        public Criteria andCinemaImgIn(List<String> values) {
            addCriterion("cinema_img in", values, "cinemaImg");
            return (Criteria) this;
        }

        public Criteria andCinemaImgNotIn(List<String> values) {
            addCriterion("cinema_img not in", values, "cinemaImg");
            return (Criteria) this;
        }

        public Criteria andCinemaImgBetween(String value1, String value2) {
            addCriterion("cinema_img between", value1, value2, "cinemaImg");
            return (Criteria) this;
        }

        public Criteria andCinemaImgNotBetween(String value1, String value2) {
            addCriterion("cinema_img not between", value1, value2, "cinemaImg");
            return (Criteria) this;
        }

        public Criteria andCinemaPhoneIsNull() {
            addCriterion("cinema_phone is null");
            return (Criteria) this;
        }

        public Criteria andCinemaPhoneIsNotNull() {
            addCriterion("cinema_phone is not null");
            return (Criteria) this;
        }

        public Criteria andCinemaPhoneEqualTo(String value) {
            addCriterion("cinema_phone =", value, "cinemaPhone");
            return (Criteria) this;
        }

        public Criteria andCinemaPhoneNotEqualTo(String value) {
            addCriterion("cinema_phone <>", value, "cinemaPhone");
            return (Criteria) this;
        }

        public Criteria andCinemaPhoneGreaterThan(String value) {
            addCriterion("cinema_phone >", value, "cinemaPhone");
            return (Criteria) this;
        }

        public Criteria andCinemaPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("cinema_phone >=", value, "cinemaPhone");
            return (Criteria) this;
        }

        public Criteria andCinemaPhoneLessThan(String value) {
            addCriterion("cinema_phone <", value, "cinemaPhone");
            return (Criteria) this;
        }

        public Criteria andCinemaPhoneLessThanOrEqualTo(String value) {
            addCriterion("cinema_phone <=", value, "cinemaPhone");
            return (Criteria) this;
        }

        public Criteria andCinemaPhoneLike(String value) {
            addCriterion("cinema_phone like", value, "cinemaPhone");
            return (Criteria) this;
        }

        public Criteria andCinemaPhoneNotLike(String value) {
            addCriterion("cinema_phone not like", value, "cinemaPhone");
            return (Criteria) this;
        }

        public Criteria andCinemaPhoneIn(List<String> values) {
            addCriterion("cinema_phone in", values, "cinemaPhone");
            return (Criteria) this;
        }

        public Criteria andCinemaPhoneNotIn(List<String> values) {
            addCriterion("cinema_phone not in", values, "cinemaPhone");
            return (Criteria) this;
        }

        public Criteria andCinemaPhoneBetween(String value1, String value2) {
            addCriterion("cinema_phone between", value1, value2, "cinemaPhone");
            return (Criteria) this;
        }

        public Criteria andCinemaPhoneNotBetween(String value1, String value2) {
            addCriterion("cinema_phone not between", value1, value2, "cinemaPhone");
            return (Criteria) this;
        }

        public Criteria andCinemaLongitudeIsNull() {
            addCriterion("cinema_longitude is null");
            return (Criteria) this;
        }

        public Criteria andCinemaLongitudeIsNotNull() {
            addCriterion("cinema_longitude is not null");
            return (Criteria) this;
        }

        public Criteria andCinemaLongitudeEqualTo(String value) {
            addCriterion("cinema_longitude =", value, "cinemaLongitude");
            return (Criteria) this;
        }

        public Criteria andCinemaLongitudeNotEqualTo(String value) {
            addCriterion("cinema_longitude <>", value, "cinemaLongitude");
            return (Criteria) this;
        }

        public Criteria andCinemaLongitudeGreaterThan(String value) {
            addCriterion("cinema_longitude >", value, "cinemaLongitude");
            return (Criteria) this;
        }

        public Criteria andCinemaLongitudeGreaterThanOrEqualTo(String value) {
            addCriterion("cinema_longitude >=", value, "cinemaLongitude");
            return (Criteria) this;
        }

        public Criteria andCinemaLongitudeLessThan(String value) {
            addCriterion("cinema_longitude <", value, "cinemaLongitude");
            return (Criteria) this;
        }

        public Criteria andCinemaLongitudeLessThanOrEqualTo(String value) {
            addCriterion("cinema_longitude <=", value, "cinemaLongitude");
            return (Criteria) this;
        }

        public Criteria andCinemaLongitudeLike(String value) {
            addCriterion("cinema_longitude like", value, "cinemaLongitude");
            return (Criteria) this;
        }

        public Criteria andCinemaLongitudeNotLike(String value) {
            addCriterion("cinema_longitude not like", value, "cinemaLongitude");
            return (Criteria) this;
        }

        public Criteria andCinemaLongitudeIn(List<String> values) {
            addCriterion("cinema_longitude in", values, "cinemaLongitude");
            return (Criteria) this;
        }

        public Criteria andCinemaLongitudeNotIn(List<String> values) {
            addCriterion("cinema_longitude not in", values, "cinemaLongitude");
            return (Criteria) this;
        }

        public Criteria andCinemaLongitudeBetween(String value1, String value2) {
            addCriterion("cinema_longitude between", value1, value2, "cinemaLongitude");
            return (Criteria) this;
        }

        public Criteria andCinemaLongitudeNotBetween(String value1, String value2) {
            addCriterion("cinema_longitude not between", value1, value2, "cinemaLongitude");
            return (Criteria) this;
        }

        public Criteria andCinemaLatitudeIsNull() {
            addCriterion("cinema_latitude is null");
            return (Criteria) this;
        }

        public Criteria andCinemaLatitudeIsNotNull() {
            addCriterion("cinema_latitude is not null");
            return (Criteria) this;
        }

        public Criteria andCinemaLatitudeEqualTo(String value) {
            addCriterion("cinema_latitude =", value, "cinemaLatitude");
            return (Criteria) this;
        }

        public Criteria andCinemaLatitudeNotEqualTo(String value) {
            addCriterion("cinema_latitude <>", value, "cinemaLatitude");
            return (Criteria) this;
        }

        public Criteria andCinemaLatitudeGreaterThan(String value) {
            addCriterion("cinema_latitude >", value, "cinemaLatitude");
            return (Criteria) this;
        }

        public Criteria andCinemaLatitudeGreaterThanOrEqualTo(String value) {
            addCriterion("cinema_latitude >=", value, "cinemaLatitude");
            return (Criteria) this;
        }

        public Criteria andCinemaLatitudeLessThan(String value) {
            addCriterion("cinema_latitude <", value, "cinemaLatitude");
            return (Criteria) this;
        }

        public Criteria andCinemaLatitudeLessThanOrEqualTo(String value) {
            addCriterion("cinema_latitude <=", value, "cinemaLatitude");
            return (Criteria) this;
        }

        public Criteria andCinemaLatitudeLike(String value) {
            addCriterion("cinema_latitude like", value, "cinemaLatitude");
            return (Criteria) this;
        }

        public Criteria andCinemaLatitudeNotLike(String value) {
            addCriterion("cinema_latitude not like", value, "cinemaLatitude");
            return (Criteria) this;
        }

        public Criteria andCinemaLatitudeIn(List<String> values) {
            addCriterion("cinema_latitude in", values, "cinemaLatitude");
            return (Criteria) this;
        }

        public Criteria andCinemaLatitudeNotIn(List<String> values) {
            addCriterion("cinema_latitude not in", values, "cinemaLatitude");
            return (Criteria) this;
        }

        public Criteria andCinemaLatitudeBetween(String value1, String value2) {
            addCriterion("cinema_latitude between", value1, value2, "cinemaLatitude");
            return (Criteria) this;
        }

        public Criteria andCinemaLatitudeNotBetween(String value1, String value2) {
            addCriterion("cinema_latitude not between", value1, value2, "cinemaLatitude");
            return (Criteria) this;
        }

        public Criteria andCinemaCityIsNull() {
            addCriterion("cinema_city is null");
            return (Criteria) this;
        }

        public Criteria andCinemaCityIsNotNull() {
            addCriterion("cinema_city is not null");
            return (Criteria) this;
        }

        public Criteria andCinemaCityEqualTo(String value) {
            addCriterion("cinema_city =", value, "cinemaCity");
            return (Criteria) this;
        }

        public Criteria andCinemaCityNotEqualTo(String value) {
            addCriterion("cinema_city <>", value, "cinemaCity");
            return (Criteria) this;
        }

        public Criteria andCinemaCityGreaterThan(String value) {
            addCriterion("cinema_city >", value, "cinemaCity");
            return (Criteria) this;
        }

        public Criteria andCinemaCityGreaterThanOrEqualTo(String value) {
            addCriterion("cinema_city >=", value, "cinemaCity");
            return (Criteria) this;
        }

        public Criteria andCinemaCityLessThan(String value) {
            addCriterion("cinema_city <", value, "cinemaCity");
            return (Criteria) this;
        }

        public Criteria andCinemaCityLessThanOrEqualTo(String value) {
            addCriterion("cinema_city <=", value, "cinemaCity");
            return (Criteria) this;
        }

        public Criteria andCinemaCityLike(String value) {
            addCriterion("cinema_city like", value, "cinemaCity");
            return (Criteria) this;
        }

        public Criteria andCinemaCityNotLike(String value) {
            addCriterion("cinema_city not like", value, "cinemaCity");
            return (Criteria) this;
        }

        public Criteria andCinemaCityIn(List<String> values) {
            addCriterion("cinema_city in", values, "cinemaCity");
            return (Criteria) this;
        }

        public Criteria andCinemaCityNotIn(List<String> values) {
            addCriterion("cinema_city not in", values, "cinemaCity");
            return (Criteria) this;
        }

        public Criteria andCinemaCityBetween(String value1, String value2) {
            addCriterion("cinema_city between", value1, value2, "cinemaCity");
            return (Criteria) this;
        }

        public Criteria andCinemaCityNotBetween(String value1, String value2) {
            addCriterion("cinema_city not between", value1, value2, "cinemaCity");
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