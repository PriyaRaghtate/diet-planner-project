package model;

public class User2 {
private int id;
private String planname;
private int protein;
private int carbs;
private int meal;
private int fats;
public User2(String planname, int protein, int carbs, int meal, int fats) {
	super();
	this.planname = planname;
	this.protein = protein;
	this.carbs = carbs;
	this.meal = meal;
	this.fats = fats;
}
@Override
public String toString() {
	return "User2 [id=" + id + ", planname=" + planname + ", protine=" + protein + ", carbs=" + carbs + ", meal=" + meal
			+ ", fats=" + fats + "]";
}
public User2(int id, String planname, int protein, int carbs, int meal, int fats) {
	super();
	this.id = id;
	this.planname = planname;
	this.protein = protein;
	this.carbs = carbs;
	this.meal = meal;
	this.fats = fats;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getPlanname() {
	return planname;
}
public void setPlanname(String planname) {
	this.planname = planname;
}
public int getProtein() {
	return protein;
}
public void setProtein(int protein) {
	this.protein = protein;
}
public int getCarbs() {
	return carbs;
}
public void setCarbs(int carbs) {
	this.carbs = carbs;
}
public int getMeal() {
	return meal;
}
public void setMeal(int meal) {
	this.meal = meal;
}
public int getFats() {
	return fats;
}
public void setFats(int fats) {
	this.fats = fats;
}
public User2() {
	super();
	// TODO Auto-generated constructor stub
}
}
