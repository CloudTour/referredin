package com.cloudtour.referredin.service;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.cloudtour.referredin.service.db.DBManager;
import com.cloudtour.referredin.service.db.DBWorker;
import com.cloudtour.referredin.service.db.task.*;

/**
 * Servlet implementation class HandleJob
 */
public class HandleJob extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HandleJob() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		System.out.println(action);
		if (action == null || action.isEmpty()) {
			return;
		} else if (action.equals("DBAddJob")) {
			handleDBAddJob(request, response);
		} else if (action.equals("DBAddJobskill")) {
			handleDBAddJobskill(request, response);
		} else if (action.equals("DBDeleteJobskill")) {
			handleDBDeleteJobskill(request, response);
		} else if (action.equals("DBGetJobskillByJid")) {
			handleDBGetJobskillByJid(request, response);
		} else if (action.equals("DBDeleteJobByJid")) {
			handleDBDeleteJobByJid(request, response);
		} else if (action.equals("DBUpdateJobByJid")) {
			handleDBUpdateJobByJid(request, response);
		} else if (action.equals("DBGetJobByUname")) {
			handleDBGetJobByUname(request, response);
		} else if (action.equals("DBGetJobByJid")) {
			handleDBGetJobByJid(request, response);
		}
	}

	private void handleDBDeleteJobskill(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String jid = request.getParameter("jid");
		String skill = request.getParameter("skill");

		DBWorker worker = DBManager.getInstance().getWorker();
		if (worker.update(new DBDeleteJobskill(jid, skill)))
			response.getWriter().write("{\"result\": \"success\"}");
		else
			response.getWriter().write("{\"result\": \"Failed to delete.\"}");
		DBManager.getInstance().releaseWorker(worker);
	}

	@SuppressWarnings("unchecked")
	private void handleDBAddJob(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// String jid = request.getParameter("jid");
		String uname = request.getParameter("uname");
		String jtitle = request.getParameter("jtitle");
		String jlocation = request.getParameter("jlocation");
		String jcompany = request.getParameter("jcompany");
		String jyears = request.getParameter("jyears");
		String jsalary = request.getParameter("jsalary");
		String jpostdate = request.getParameter("jpostdate");
		String jtype = request.getParameter("jtype");
		String jindustry = request.getParameter("jindustry");
		String jwebsite = request.getParameter("jwebsite");

		DBWorker worker = DBManager.getInstance().getWorker();
		ResultSet set = worker.query(new DBGetMaxJobId());

		int jid = -1;
		try {
			while (set.next()) {
				jid = set.getInt("jid") + 1;
			}
			if (worker.update(new DBAddJob(jid + "", uname, jtitle, jlocation,
					jcompany, jyears, jsalary, jpostdate, jtype, jindustry,
					jwebsite))) {
				JSONObject obj = new JSONObject();
				obj.put("result", "success");
				obj.put("jid", jid);
				response.getWriter().write(obj.toJSONString());
			} else {
				response.getWriter()
						.write("{\"result\": \"Failed to delete.\"}");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.getWriter().write("{\"result\": \"Failed to delete.\"}");
		}
		DBManager.getInstance().releaseWorker(worker);
	}

	private void handleDBUpdateJobByJid(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String jid = request.getParameter("jid");
		String uname = request.getParameter("uname");
		String jtitle = request.getParameter("jtitle");
		String jlocation = request.getParameter("jlocation");
		String jcompany = request.getParameter("jcompany");
		String jyears = request.getParameter("jyears");
		String jsalary = request.getParameter("jsalary");
		String jpostdate = request.getParameter("jpostdate");
		String jtype = request.getParameter("jtype");
		String jindustry = request.getParameter("jindustry");
		String jwebsite = request.getParameter("jwebsite");

		DBWorker worker = DBManager.getInstance().getWorker();
		if (worker.update(new DBUpdateJobByJid(jid, uname, jtitle, jlocation,
				jcompany, jyears, jsalary, jpostdate, jtype, jindustry,
				jwebsite)))
			response.getWriter().write("{\"result\": \"success\"}");
		else
			response.getWriter().write("{\"result\": \"Failed to update.\"}");
			
		DBManager.getInstance().releaseWorker(worker);
	}

	private void handleDBDeleteJobByJid(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String jid = request.getParameter("jid");

		DBWorker worker = DBManager.getInstance().getWorker();
		if (worker.update(new DBDeleteJobByJid(jid)))
			response.getWriter().write("{\"result\": \"success\"}");
		else
			response.getWriter().write("{\"result\": \"Failed to delete.\"}");
		DBManager.getInstance().releaseWorker(worker);
	}

	private void handleDBAddJobskill(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String jid = request.getParameter("jid");
		String skill = request.getParameter("skill");
		DBWorker worker = DBManager.getInstance().getWorker();
		if (worker.update(new DBAddJobskill(jid, skill))) 
			response.getWriter().write("{\"result\": \"success\"}");
		else
			response.getWriter().write("{\"result\": \"Failed to add.\"}");
		DBManager.getInstance().releaseWorker(worker);
	}

	@SuppressWarnings("unchecked")
	private void handleDBGetJobByUname(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		DBWorker worker = DBManager.getInstance().getWorker();
		ResultSet set = worker.query(new DBGetJobByUname(uname));

		// response
		JSONArray array = new JSONArray();
		try {
			while (set.next()) {
				JSONObject obj = new JSONObject();
				obj.put("uname", set.getString("uname"));
				obj.put("jid", set.getString("jid"));
				obj.put("jtitle", set.getString("jtitle"));
				obj.put("jcompany", set.getString("jcompany"));
				obj.put("jlocation", set.getString("jlocation"));
				obj.put("jyears", set.getString("jyears"));
				obj.put("jsalary", set.getString("jsalary"));
				obj.put("jpostdate", set.getString("jpostdate"));
				obj.put("jtype", set.getString("jtype"));
				obj.put("jindustry", set.getString("jindustry"));
				obj.put("jwebsite", set.getString("jwebsite"));
				array.add(obj);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		response.getWriter().write(array.toJSONString());
		DBManager.getInstance().releaseWorker(worker);
	}

	@SuppressWarnings("unchecked")
	private void handleDBGetJobByJid(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String jid = request.getParameter("jid");
		DBWorker worker = DBManager.getInstance().getWorker();
		ResultSet set = worker.query(new DBGetJobByJid(jid));

		// response
		JSONArray array = new JSONArray();
		try {
			while (set.next()) {
				JSONObject obj = new JSONObject();
				obj.put("uname", set.getString("uname"));
				obj.put("jid", set.getString("jid"));
				obj.put("jtitle", set.getString("jtitle"));
				obj.put("jcompany", set.getString("jcompany"));
				obj.put("jlocation", set.getString("jlocation"));
				obj.put("jyears", set.getString("jyears"));
				obj.put("jsalary", set.getString("jsalary"));
				obj.put("jpostdate", set.getString("jpostdate"));
				obj.put("jtype", set.getString("jtype"));
				obj.put("jindustry", set.getString("jindustry"));
				array.add(obj);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		response.getWriter().write(array.toJSONString());
		DBManager.getInstance().releaseWorker(worker);
	}

	@SuppressWarnings("unchecked")
	private void handleDBGetJobskillByJid(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String jid = request.getParameter("jid");
		System.out.println(jid);
		DBWorker worker = DBManager.getInstance().getWorker();
		ResultSet set = worker.query(new DBGetJobskillByJid(jid));

		// response
		JSONArray array = new JSONArray();
		try {
			while (set != null && set.next()) {
				JSONObject obj = new JSONObject();
				obj.put("jid", set.getString("jid"));
				obj.put("skill", set.getString("skill"));
				array.add(obj);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		response.getWriter().write(array.toJSONString());
		DBManager.getInstance().releaseWorker(worker);
	}

}
