package model;

public class User3 {
		private int id;
	 	private String name;
	    private int weight;
	    private int height;
	    private int mealsPerDay;
	    private String goal;
	    private String description;
		public User3() {
			super();
			// TODO Auto-generated constructor stub
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public int getWeight() {
			return weight;
		}
		public void setWeight(int weight) {
			this.weight = weight;
		}
		public int getHeight() {
			return height;
		}
		public void setHeight(int height) {
			this.height = height;
		}
		public int getMealsPerDay() {
			return mealsPerDay;
		}
		public void setMealsPerDay(int mealsPerDay) {
			this.mealsPerDay = mealsPerDay;
		}
		public String getGoal() {
			return goal;
		}
		public void setGoal(String goal) {
			this.goal = goal;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		
		public User3(int id, String name, int weight, int height, int mealsPerDay, String goal,
				String description) {
			super();
			this.id = id;
			this.name = name;
			this.weight = weight;
			this.height = height;
			this.mealsPerDay = mealsPerDay;
			this.goal = goal;
			this.description = description;
		}
		
		public User3(String name, int weight, int height, int mealsPerDay, String goal, String description) {
			super();
			this.name = name;
			this.weight = weight;
			this.height = height;
			this.mealsPerDay = mealsPerDay;
			this.goal = goal;
			this.description = description;
		}
		@Override
		public String toString() {
			return "User3 [id=" + id + ", name=" + name + ", weight=" + weight + ", height=" + height + ", mealsPerDay="
					+ mealsPerDay + ", goal=" + goal + ", description=" + description + "]";
		}
		
	    
}
