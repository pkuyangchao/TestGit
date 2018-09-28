package com.yc.movie.bean;

import java.util.ArrayList;
import java.util.List;

public class MovieExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MovieExample() {
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

        public Criteria andMovieNameIsNull() {
            addCriterion("movie_name is null");
            return (Criteria) this;
        }

        public Criteria andMovieNameIsNotNull() {
            addCriterion("movie_name is not null");
            return (Criteria) this;
        }

        public Criteria andMovieNameEqualTo(String value) {
            addCriterion("movie_name =", value, "movieName");
            return (Criteria) this;
        }

        public Criteria andMovieNameNotEqualTo(String value) {
            addCriterion("movie_name <>", value, "movieName");
            return (Criteria) this;
        }

        public Criteria andMovieNameGreaterThan(String value) {
            addCriterion("movie_name >", value, "movieName");
            return (Criteria) this;
        }

        public Criteria andMovieNameGreaterThanOrEqualTo(String value) {
            addCriterion("movie_name >=", value, "movieName");
            return (Criteria) this;
        }

        public Criteria andMovieNameLessThan(String value) {
            addCriterion("movie_name <", value, "movieName");
            return (Criteria) this;
        }

        public Criteria andMovieNameLessThanOrEqualTo(String value) {
            addCriterion("movie_name <=", value, "movieName");
            return (Criteria) this;
        }

        public Criteria andMovieNameLike(String value) {
            addCriterion("movie_name like", value, "movieName");
            return (Criteria) this;
        }

        public Criteria andMovieNameNotLike(String value) {
            addCriterion("movie_name not like", value, "movieName");
            return (Criteria) this;
        }

        public Criteria andMovieNameIn(List<String> values) {
            addCriterion("movie_name in", values, "movieName");
            return (Criteria) this;
        }

        public Criteria andMovieNameNotIn(List<String> values) {
            addCriterion("movie_name not in", values, "movieName");
            return (Criteria) this;
        }

        public Criteria andMovieNameBetween(String value1, String value2) {
            addCriterion("movie_name between", value1, value2, "movieName");
            return (Criteria) this;
        }

        public Criteria andMovieNameNotBetween(String value1, String value2) {
            addCriterion("movie_name not between", value1, value2, "movieName");
            return (Criteria) this;
        }

        public Criteria andMovieDirectorIsNull() {
            addCriterion("movie_director is null");
            return (Criteria) this;
        }

        public Criteria andMovieDirectorIsNotNull() {
            addCriterion("movie_director is not null");
            return (Criteria) this;
        }

        public Criteria andMovieDirectorEqualTo(String value) {
            addCriterion("movie_director =", value, "movieDirector");
            return (Criteria) this;
        }

        public Criteria andMovieDirectorNotEqualTo(String value) {
            addCriterion("movie_director <>", value, "movieDirector");
            return (Criteria) this;
        }

        public Criteria andMovieDirectorGreaterThan(String value) {
            addCriterion("movie_director >", value, "movieDirector");
            return (Criteria) this;
        }

        public Criteria andMovieDirectorGreaterThanOrEqualTo(String value) {
            addCriterion("movie_director >=", value, "movieDirector");
            return (Criteria) this;
        }

        public Criteria andMovieDirectorLessThan(String value) {
            addCriterion("movie_director <", value, "movieDirector");
            return (Criteria) this;
        }

        public Criteria andMovieDirectorLessThanOrEqualTo(String value) {
            addCriterion("movie_director <=", value, "movieDirector");
            return (Criteria) this;
        }

        public Criteria andMovieDirectorLike(String value) {
            addCriterion("movie_director like", value, "movieDirector");
            return (Criteria) this;
        }

        public Criteria andMovieDirectorNotLike(String value) {
            addCriterion("movie_director not like", value, "movieDirector");
            return (Criteria) this;
        }

        public Criteria andMovieDirectorIn(List<String> values) {
            addCriterion("movie_director in", values, "movieDirector");
            return (Criteria) this;
        }

        public Criteria andMovieDirectorNotIn(List<String> values) {
            addCriterion("movie_director not in", values, "movieDirector");
            return (Criteria) this;
        }

        public Criteria andMovieDirectorBetween(String value1, String value2) {
            addCriterion("movie_director between", value1, value2, "movieDirector");
            return (Criteria) this;
        }

        public Criteria andMovieDirectorNotBetween(String value1, String value2) {
            addCriterion("movie_director not between", value1, value2, "movieDirector");
            return (Criteria) this;
        }

        public Criteria andMovieScenIsNull() {
            addCriterion("movie_scen is null");
            return (Criteria) this;
        }

        public Criteria andMovieScenIsNotNull() {
            addCriterion("movie_scen is not null");
            return (Criteria) this;
        }

        public Criteria andMovieScenEqualTo(String value) {
            addCriterion("movie_scen =", value, "movieScen");
            return (Criteria) this;
        }

        public Criteria andMovieScenNotEqualTo(String value) {
            addCriterion("movie_scen <>", value, "movieScen");
            return (Criteria) this;
        }

        public Criteria andMovieScenGreaterThan(String value) {
            addCriterion("movie_scen >", value, "movieScen");
            return (Criteria) this;
        }

        public Criteria andMovieScenGreaterThanOrEqualTo(String value) {
            addCriterion("movie_scen >=", value, "movieScen");
            return (Criteria) this;
        }

        public Criteria andMovieScenLessThan(String value) {
            addCriterion("movie_scen <", value, "movieScen");
            return (Criteria) this;
        }

        public Criteria andMovieScenLessThanOrEqualTo(String value) {
            addCriterion("movie_scen <=", value, "movieScen");
            return (Criteria) this;
        }

        public Criteria andMovieScenLike(String value) {
            addCriterion("movie_scen like", value, "movieScen");
            return (Criteria) this;
        }

        public Criteria andMovieScenNotLike(String value) {
            addCriterion("movie_scen not like", value, "movieScen");
            return (Criteria) this;
        }

        public Criteria andMovieScenIn(List<String> values) {
            addCriterion("movie_scen in", values, "movieScen");
            return (Criteria) this;
        }

        public Criteria andMovieScenNotIn(List<String> values) {
            addCriterion("movie_scen not in", values, "movieScen");
            return (Criteria) this;
        }

        public Criteria andMovieScenBetween(String value1, String value2) {
            addCriterion("movie_scen between", value1, value2, "movieScen");
            return (Criteria) this;
        }

        public Criteria andMovieScenNotBetween(String value1, String value2) {
            addCriterion("movie_scen not between", value1, value2, "movieScen");
            return (Criteria) this;
        }

        public Criteria andActorNameIsNull() {
            addCriterion("actor_name is null");
            return (Criteria) this;
        }

        public Criteria andActorNameIsNotNull() {
            addCriterion("actor_name is not null");
            return (Criteria) this;
        }

        public Criteria andActorNameEqualTo(String value) {
            addCriterion("actor_name =", value, "actorName");
            return (Criteria) this;
        }

        public Criteria andActorNameNotEqualTo(String value) {
            addCriterion("actor_name <>", value, "actorName");
            return (Criteria) this;
        }

        public Criteria andActorNameGreaterThan(String value) {
            addCriterion("actor_name >", value, "actorName");
            return (Criteria) this;
        }

        public Criteria andActorNameGreaterThanOrEqualTo(String value) {
            addCriterion("actor_name >=", value, "actorName");
            return (Criteria) this;
        }

        public Criteria andActorNameLessThan(String value) {
            addCriterion("actor_name <", value, "actorName");
            return (Criteria) this;
        }

        public Criteria andActorNameLessThanOrEqualTo(String value) {
            addCriterion("actor_name <=", value, "actorName");
            return (Criteria) this;
        }

        public Criteria andActorNameLike(String value) {
            addCriterion("actor_name like", value, "actorName");
            return (Criteria) this;
        }

        public Criteria andActorNameNotLike(String value) {
            addCriterion("actor_name not like", value, "actorName");
            return (Criteria) this;
        }

        public Criteria andActorNameIn(List<String> values) {
            addCriterion("actor_name in", values, "actorName");
            return (Criteria) this;
        }

        public Criteria andActorNameNotIn(List<String> values) {
            addCriterion("actor_name not in", values, "actorName");
            return (Criteria) this;
        }

        public Criteria andActorNameBetween(String value1, String value2) {
            addCriterion("actor_name between", value1, value2, "actorName");
            return (Criteria) this;
        }

        public Criteria andActorNameNotBetween(String value1, String value2) {
            addCriterion("actor_name not between", value1, value2, "actorName");
            return (Criteria) this;
        }

        public Criteria andMovieTypeIsNull() {
            addCriterion("movie_type is null");
            return (Criteria) this;
        }

        public Criteria andMovieTypeIsNotNull() {
            addCriterion("movie_type is not null");
            return (Criteria) this;
        }

        public Criteria andMovieTypeEqualTo(String value) {
            addCriterion("movie_type =", value, "movieType");
            return (Criteria) this;
        }

        public Criteria andMovieTypeNotEqualTo(String value) {
            addCriterion("movie_type <>", value, "movieType");
            return (Criteria) this;
        }

        public Criteria andMovieTypeGreaterThan(String value) {
            addCriterion("movie_type >", value, "movieType");
            return (Criteria) this;
        }

        public Criteria andMovieTypeGreaterThanOrEqualTo(String value) {
            addCriterion("movie_type >=", value, "movieType");
            return (Criteria) this;
        }

        public Criteria andMovieTypeLessThan(String value) {
            addCriterion("movie_type <", value, "movieType");
            return (Criteria) this;
        }

        public Criteria andMovieTypeLessThanOrEqualTo(String value) {
            addCriterion("movie_type <=", value, "movieType");
            return (Criteria) this;
        }

        public Criteria andMovieTypeLike(String value) {
            addCriterion("movie_type like", value, "movieType");
            return (Criteria) this;
        }

        public Criteria andMovieTypeNotLike(String value) {
            addCriterion("movie_type not like", value, "movieType");
            return (Criteria) this;
        }

        public Criteria andMovieTypeIn(List<String> values) {
            addCriterion("movie_type in", values, "movieType");
            return (Criteria) this;
        }

        public Criteria andMovieTypeNotIn(List<String> values) {
            addCriterion("movie_type not in", values, "movieType");
            return (Criteria) this;
        }

        public Criteria andMovieTypeBetween(String value1, String value2) {
            addCriterion("movie_type between", value1, value2, "movieType");
            return (Criteria) this;
        }

        public Criteria andMovieTypeNotBetween(String value1, String value2) {
            addCriterion("movie_type not between", value1, value2, "movieType");
            return (Criteria) this;
        }

        public Criteria andMovieCountryIsNull() {
            addCriterion("movie_country is null");
            return (Criteria) this;
        }

        public Criteria andMovieCountryIsNotNull() {
            addCriterion("movie_country is not null");
            return (Criteria) this;
        }

        public Criteria andMovieCountryEqualTo(String value) {
            addCriterion("movie_country =", value, "movieCountry");
            return (Criteria) this;
        }

        public Criteria andMovieCountryNotEqualTo(String value) {
            addCriterion("movie_country <>", value, "movieCountry");
            return (Criteria) this;
        }

        public Criteria andMovieCountryGreaterThan(String value) {
            addCriterion("movie_country >", value, "movieCountry");
            return (Criteria) this;
        }

        public Criteria andMovieCountryGreaterThanOrEqualTo(String value) {
            addCriterion("movie_country >=", value, "movieCountry");
            return (Criteria) this;
        }

        public Criteria andMovieCountryLessThan(String value) {
            addCriterion("movie_country <", value, "movieCountry");
            return (Criteria) this;
        }

        public Criteria andMovieCountryLessThanOrEqualTo(String value) {
            addCriterion("movie_country <=", value, "movieCountry");
            return (Criteria) this;
        }

        public Criteria andMovieCountryLike(String value) {
            addCriterion("movie_country like", value, "movieCountry");
            return (Criteria) this;
        }

        public Criteria andMovieCountryNotLike(String value) {
            addCriterion("movie_country not like", value, "movieCountry");
            return (Criteria) this;
        }

        public Criteria andMovieCountryIn(List<String> values) {
            addCriterion("movie_country in", values, "movieCountry");
            return (Criteria) this;
        }

        public Criteria andMovieCountryNotIn(List<String> values) {
            addCriterion("movie_country not in", values, "movieCountry");
            return (Criteria) this;
        }

        public Criteria andMovieCountryBetween(String value1, String value2) {
            addCriterion("movie_country between", value1, value2, "movieCountry");
            return (Criteria) this;
        }

        public Criteria andMovieCountryNotBetween(String value1, String value2) {
            addCriterion("movie_country not between", value1, value2, "movieCountry");
            return (Criteria) this;
        }

        public Criteria andMovieLanguageIsNull() {
            addCriterion("movie_language is null");
            return (Criteria) this;
        }

        public Criteria andMovieLanguageIsNotNull() {
            addCriterion("movie_language is not null");
            return (Criteria) this;
        }

        public Criteria andMovieLanguageEqualTo(String value) {
            addCriterion("movie_language =", value, "movieLanguage");
            return (Criteria) this;
        }

        public Criteria andMovieLanguageNotEqualTo(String value) {
            addCriterion("movie_language <>", value, "movieLanguage");
            return (Criteria) this;
        }

        public Criteria andMovieLanguageGreaterThan(String value) {
            addCriterion("movie_language >", value, "movieLanguage");
            return (Criteria) this;
        }

        public Criteria andMovieLanguageGreaterThanOrEqualTo(String value) {
            addCriterion("movie_language >=", value, "movieLanguage");
            return (Criteria) this;
        }

        public Criteria andMovieLanguageLessThan(String value) {
            addCriterion("movie_language <", value, "movieLanguage");
            return (Criteria) this;
        }

        public Criteria andMovieLanguageLessThanOrEqualTo(String value) {
            addCriterion("movie_language <=", value, "movieLanguage");
            return (Criteria) this;
        }

        public Criteria andMovieLanguageLike(String value) {
            addCriterion("movie_language like", value, "movieLanguage");
            return (Criteria) this;
        }

        public Criteria andMovieLanguageNotLike(String value) {
            addCriterion("movie_language not like", value, "movieLanguage");
            return (Criteria) this;
        }

        public Criteria andMovieLanguageIn(List<String> values) {
            addCriterion("movie_language in", values, "movieLanguage");
            return (Criteria) this;
        }

        public Criteria andMovieLanguageNotIn(List<String> values) {
            addCriterion("movie_language not in", values, "movieLanguage");
            return (Criteria) this;
        }

        public Criteria andMovieLanguageBetween(String value1, String value2) {
            addCriterion("movie_language between", value1, value2, "movieLanguage");
            return (Criteria) this;
        }

        public Criteria andMovieLanguageNotBetween(String value1, String value2) {
            addCriterion("movie_language not between", value1, value2, "movieLanguage");
            return (Criteria) this;
        }

        public Criteria andMovieShowtimeIsNull() {
            addCriterion("movie_showtime is null");
            return (Criteria) this;
        }

        public Criteria andMovieShowtimeIsNotNull() {
            addCriterion("movie_showtime is not null");
            return (Criteria) this;
        }

        public Criteria andMovieShowtimeEqualTo(String value) {
            addCriterion("movie_showtime =", value, "movieShowtime");
            return (Criteria) this;
        }

        public Criteria andMovieShowtimeNotEqualTo(String value) {
            addCriterion("movie_showtime <>", value, "movieShowtime");
            return (Criteria) this;
        }

        public Criteria andMovieShowtimeGreaterThan(String value) {
            addCriterion("movie_showtime >", value, "movieShowtime");
            return (Criteria) this;
        }

        public Criteria andMovieShowtimeGreaterThanOrEqualTo(String value) {
            addCriterion("movie_showtime >=", value, "movieShowtime");
            return (Criteria) this;
        }

        public Criteria andMovieShowtimeLessThan(String value) {
            addCriterion("movie_showtime <", value, "movieShowtime");
            return (Criteria) this;
        }

        public Criteria andMovieShowtimeLessThanOrEqualTo(String value) {
            addCriterion("movie_showtime <=", value, "movieShowtime");
            return (Criteria) this;
        }

        public Criteria andMovieShowtimeLike(String value) {
            addCriterion("movie_showtime like", value, "movieShowtime");
            return (Criteria) this;
        }

        public Criteria andMovieShowtimeNotLike(String value) {
            addCriterion("movie_showtime not like", value, "movieShowtime");
            return (Criteria) this;
        }

        public Criteria andMovieShowtimeIn(List<String> values) {
            addCriterion("movie_showtime in", values, "movieShowtime");
            return (Criteria) this;
        }

        public Criteria andMovieShowtimeNotIn(List<String> values) {
            addCriterion("movie_showtime not in", values, "movieShowtime");
            return (Criteria) this;
        }

        public Criteria andMovieShowtimeBetween(String value1, String value2) {
            addCriterion("movie_showtime between", value1, value2, "movieShowtime");
            return (Criteria) this;
        }

        public Criteria andMovieShowtimeNotBetween(String value1, String value2) {
            addCriterion("movie_showtime not between", value1, value2, "movieShowtime");
            return (Criteria) this;
        }

        public Criteria andMovieRuntimeIsNull() {
            addCriterion("movie_runtime is null");
            return (Criteria) this;
        }

        public Criteria andMovieRuntimeIsNotNull() {
            addCriterion("movie_runtime is not null");
            return (Criteria) this;
        }

        public Criteria andMovieRuntimeEqualTo(String value) {
            addCriterion("movie_runtime =", value, "movieRuntime");
            return (Criteria) this;
        }

        public Criteria andMovieRuntimeNotEqualTo(String value) {
            addCriterion("movie_runtime <>", value, "movieRuntime");
            return (Criteria) this;
        }

        public Criteria andMovieRuntimeGreaterThan(String value) {
            addCriterion("movie_runtime >", value, "movieRuntime");
            return (Criteria) this;
        }

        public Criteria andMovieRuntimeGreaterThanOrEqualTo(String value) {
            addCriterion("movie_runtime >=", value, "movieRuntime");
            return (Criteria) this;
        }

        public Criteria andMovieRuntimeLessThan(String value) {
            addCriterion("movie_runtime <", value, "movieRuntime");
            return (Criteria) this;
        }

        public Criteria andMovieRuntimeLessThanOrEqualTo(String value) {
            addCriterion("movie_runtime <=", value, "movieRuntime");
            return (Criteria) this;
        }

        public Criteria andMovieRuntimeLike(String value) {
            addCriterion("movie_runtime like", value, "movieRuntime");
            return (Criteria) this;
        }

        public Criteria andMovieRuntimeNotLike(String value) {
            addCriterion("movie_runtime not like", value, "movieRuntime");
            return (Criteria) this;
        }

        public Criteria andMovieRuntimeIn(List<String> values) {
            addCriterion("movie_runtime in", values, "movieRuntime");
            return (Criteria) this;
        }

        public Criteria andMovieRuntimeNotIn(List<String> values) {
            addCriterion("movie_runtime not in", values, "movieRuntime");
            return (Criteria) this;
        }

        public Criteria andMovieRuntimeBetween(String value1, String value2) {
            addCriterion("movie_runtime between", value1, value2, "movieRuntime");
            return (Criteria) this;
        }

        public Criteria andMovieRuntimeNotBetween(String value1, String value2) {
            addCriterion("movie_runtime not between", value1, value2, "movieRuntime");
            return (Criteria) this;
        }

        public Criteria andMovieGradeIsNull() {
            addCriterion("movie_grade is null");
            return (Criteria) this;
        }

        public Criteria andMovieGradeIsNotNull() {
            addCriterion("movie_grade is not null");
            return (Criteria) this;
        }

        public Criteria andMovieGradeEqualTo(Float value) {
            addCriterion("movie_grade =", value, "movieGrade");
            return (Criteria) this;
        }

        public Criteria andMovieGradeNotEqualTo(Float value) {
            addCriterion("movie_grade <>", value, "movieGrade");
            return (Criteria) this;
        }

        public Criteria andMovieGradeGreaterThan(Float value) {
            addCriterion("movie_grade >", value, "movieGrade");
            return (Criteria) this;
        }

        public Criteria andMovieGradeGreaterThanOrEqualTo(Float value) {
            addCriterion("movie_grade >=", value, "movieGrade");
            return (Criteria) this;
        }

        public Criteria andMovieGradeLessThan(Float value) {
            addCriterion("movie_grade <", value, "movieGrade");
            return (Criteria) this;
        }

        public Criteria andMovieGradeLessThanOrEqualTo(Float value) {
            addCriterion("movie_grade <=", value, "movieGrade");
            return (Criteria) this;
        }

        public Criteria andMovieGradeIn(List<Float> values) {
            addCriterion("movie_grade in", values, "movieGrade");
            return (Criteria) this;
        }

        public Criteria andMovieGradeNotIn(List<Float> values) {
            addCriterion("movie_grade not in", values, "movieGrade");
            return (Criteria) this;
        }

        public Criteria andMovieGradeBetween(Float value1, Float value2) {
            addCriterion("movie_grade between", value1, value2, "movieGrade");
            return (Criteria) this;
        }

        public Criteria andMovieGradeNotBetween(Float value1, Float value2) {
            addCriterion("movie_grade not between", value1, value2, "movieGrade");
            return (Criteria) this;
        }

        public Criteria andCommentCountIsNull() {
            addCriterion("comment_count is null");
            return (Criteria) this;
        }

        public Criteria andCommentCountIsNotNull() {
            addCriterion("comment_count is not null");
            return (Criteria) this;
        }

        public Criteria andCommentCountEqualTo(Integer value) {
            addCriterion("comment_count =", value, "commentCount");
            return (Criteria) this;
        }

        public Criteria andCommentCountNotEqualTo(Integer value) {
            addCriterion("comment_count <>", value, "commentCount");
            return (Criteria) this;
        }

        public Criteria andCommentCountGreaterThan(Integer value) {
            addCriterion("comment_count >", value, "commentCount");
            return (Criteria) this;
        }

        public Criteria andCommentCountGreaterThanOrEqualTo(Integer value) {
            addCriterion("comment_count >=", value, "commentCount");
            return (Criteria) this;
        }

        public Criteria andCommentCountLessThan(Integer value) {
            addCriterion("comment_count <", value, "commentCount");
            return (Criteria) this;
        }

        public Criteria andCommentCountLessThanOrEqualTo(Integer value) {
            addCriterion("comment_count <=", value, "commentCount");
            return (Criteria) this;
        }

        public Criteria andCommentCountIn(List<Integer> values) {
            addCriterion("comment_count in", values, "commentCount");
            return (Criteria) this;
        }

        public Criteria andCommentCountNotIn(List<Integer> values) {
            addCriterion("comment_count not in", values, "commentCount");
            return (Criteria) this;
        }

        public Criteria andCommentCountBetween(Integer value1, Integer value2) {
            addCriterion("comment_count between", value1, value2, "commentCount");
            return (Criteria) this;
        }

        public Criteria andCommentCountNotBetween(Integer value1, Integer value2) {
            addCriterion("comment_count not between", value1, value2, "commentCount");
            return (Criteria) this;
        }

        public Criteria andMovieImgIsNull() {
            addCriterion("movie_img is null");
            return (Criteria) this;
        }

        public Criteria andMovieImgIsNotNull() {
            addCriterion("movie_img is not null");
            return (Criteria) this;
        }

        public Criteria andMovieImgEqualTo(String value) {
            addCriterion("movie_img =", value, "movieImg");
            return (Criteria) this;
        }

        public Criteria andMovieImgNotEqualTo(String value) {
            addCriterion("movie_img <>", value, "movieImg");
            return (Criteria) this;
        }

        public Criteria andMovieImgGreaterThan(String value) {
            addCriterion("movie_img >", value, "movieImg");
            return (Criteria) this;
        }

        public Criteria andMovieImgGreaterThanOrEqualTo(String value) {
            addCriterion("movie_img >=", value, "movieImg");
            return (Criteria) this;
        }

        public Criteria andMovieImgLessThan(String value) {
            addCriterion("movie_img <", value, "movieImg");
            return (Criteria) this;
        }

        public Criteria andMovieImgLessThanOrEqualTo(String value) {
            addCriterion("movie_img <=", value, "movieImg");
            return (Criteria) this;
        }

        public Criteria andMovieImgLike(String value) {
            addCriterion("movie_img like", value, "movieImg");
            return (Criteria) this;
        }

        public Criteria andMovieImgNotLike(String value) {
            addCriterion("movie_img not like", value, "movieImg");
            return (Criteria) this;
        }

        public Criteria andMovieImgIn(List<String> values) {
            addCriterion("movie_img in", values, "movieImg");
            return (Criteria) this;
        }

        public Criteria andMovieImgNotIn(List<String> values) {
            addCriterion("movie_img not in", values, "movieImg");
            return (Criteria) this;
        }

        public Criteria andMovieImgBetween(String value1, String value2) {
            addCriterion("movie_img between", value1, value2, "movieImg");
            return (Criteria) this;
        }

        public Criteria andMovieImgNotBetween(String value1, String value2) {
            addCriterion("movie_img not between", value1, value2, "movieImg");
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