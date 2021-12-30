package com.project.eatda.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class ReportDto {
		private int report_no;
		private String reporter;
		private String reported;
		private int reply_no;
		private Date report_date;
		private String report_status;
		private String report_content;
		
		public ReportDto() {
			super();
		}
		
		public ReportDto(int report_no, String reporter, String reported, int reply_no, Date report_date,
				String report_status, String report_content) {
			super();
			this.report_no = report_no;
			this.reporter = reporter;
			this.reported = reported;
			this.reply_no = reply_no;
			this.report_date = report_date;
			this.report_status = report_status;
			this.report_content = report_content;
		}
		
		public int getReport_no() {
			return report_no;
		}
		public void setReport_no(int report_no) {
			this.report_no = report_no;
		}
		public String getReporter() {
			return reporter;
		}
		public void setReporter(String reporter) {
			this.reporter = reporter;
		}
		public String getReported() {
			return reported;
		}
		public void setReported(String reported) {
			this.reported = reported;
		}
		public int getReply_no() {
			return reply_no;
		}
		public void setReply_no(int reply_no) {
			this.reply_no = reply_no;
		}
		public Date getReport_date() {
			return report_date;
		}
		public void setReport_date(Date report_date) {
			this.report_date = report_date;
		}
		public String getReport_status() {
			return report_status;
		}
		public void setReport_status(String report_status) {
			this.report_status = report_status;
		}
		public String getReport_content() {
			return report_content;
		}
		public void setReport_content(String report_content) {
			this.report_content = report_content;
		}
		
}
