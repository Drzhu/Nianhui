package com.guide.pojo;

public class NianHuiData {

	private String name;
	private int value;
	private String level;
	private int male;

	
	public int getMale() {
		return male;
	}

	public void setMale(int male) {
		this.male = male;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	@Override
	public String toString() {
		return "NianHuiData [name=" + name + ", value=" + value + ", level=" + level + ", male=" + male + "]";
	}

	

}
