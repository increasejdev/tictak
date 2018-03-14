package beans;

import java.util.Date;

public class Issue {

	private int id;
	private String issue;
	private String status_id;
	private String codifier_id;
	private String description;
	private String priority_id;
	private String solution_id;
	private Date data;
	private String rfc_id;	
	
	public Issue() {}
	
	

	



	public Issue(int id, String issue, String status_id, String codifier_id, String description, String priority_id,
			String solution_id, Date data, String rfc_id) {
		super();
		this.id = id;
		this.issue = issue;
		this.status_id = status_id;
		this.codifier_id = codifier_id;
		this.description = description;
		this.priority_id = priority_id;
		this.solution_id = solution_id;
		this.data = data;
		this.rfc_id = rfc_id;
	}







	public int getId() {
		return id;
	}







	public void setId(int id) {
		this.id = id;
	}







	public String getIssue() {
		return issue;
	}







	public void setIssue(String issue) {
		this.issue = issue;
	}







	public String getStatus_id() {
		return status_id;
	}







	public void setStatus_id(String status_id) {
		this.status_id = status_id;
	}







	public String getCodifier_id() {
		return codifier_id;
	}







	public void setCodifier_id(String codifier_id) {
		this.codifier_id = codifier_id;
	}







	public String getDescription() {
		return description;
	}







	public void setDescription(String description) {
		this.description = description;
	}







	public String getPriority_id() {
		return priority_id;
	}







	public void setPriority_id(String priority_id) {
		this.priority_id = priority_id;
	}







	public String getSolution_id() {
		return solution_id;
	}







	public void setSolution_id(String solution_id) {
		this.solution_id = solution_id;
	}







	public Date getData() {
		return data;
	}







	public void setData(Date data) {
		this.data = data;
	}







	public String getRfc_id() {
		return rfc_id;
	}







	public void setRfc_id(String rfc_id) {
		this.rfc_id = rfc_id;
	}







	@Override
	public String toString() {
		return "Issue [id=" + id + ", issue=" + issue + ", status_id=" + status_id + ", codifier_id=" + codifier_id
				+ ", description=" + description + ", priority_id=" + priority_id + ", solution_id=" + solution_id
				+ ", data=" + data + ", rfc_id=" + rfc_id + "]";
	}





	




}