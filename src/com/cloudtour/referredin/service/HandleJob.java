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
		if (action == null || action.isEmpty()) {
			return;
		} else if (action.equals("DBAddJob")) {
			handleDBAddJob(request, response);
		} else if (action.equals("DBDeleteJobByJid")) {
			handleDBDeleteJobByJid(request, response);
		} else if (action.equals("DBUpdateJobByJid")) {
			handleDBUpdateJobByJid(request, response);
		} else if (action.equals("DBGetJobByUname")) {
			handleDBGetJobByUname(request, response);
		}
	}

	private void handleDBAddJob(HttpServletRequest request,
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
		int out = worker.update(new DBAddJob(jid, uname, jtitle, jlocation, jcompany,
				jyears, jsalary, jpostdate, jtype, jindustry, jwebsite));
		response.getWriter().write(out);
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
		int out = worker.update(new DBUpdateJobByJid(jid, uname, jtitle, jlocation,
				jcompany, jyears, jsalary, jpostdate, jtype, jindustry,
				jwebsite));
		response.getWriter().write(out);
		DBManager.getInstance().releaseWorker(worker);
	}

	private void handleDBDeleteJobByJid(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String jid = request.getParameter("jid");
		
		DBWorker worker = DBManager.getInstance().getWorker();
		int out = worker.update(new DBDeleteJobByJid(jid));
		response.getWriter().write(out);
		DBManager.getInstance().releaseWorker(worker);
	}

	private void handleDBGetJobByUname(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		DBWorker worker = DBManager.getInstance().getWorker();
		worker.query(new DBGetJobByUname(uname));
		ResultSet set = worker.query(new DBGetUser(uname));

		// response
		JSONArray array = new JSONArray();
		try {
			while (set.next()) {
				JSONObject obj = new JSONObject();
				obj.put("uname", set.getString("uname"));
				obj.put("password", set.getString("password"));
				obj.put("firstname", set.getString("firstname"));
				obj.put("lastname", set.getString("lastname"));
				obj.put("birthdate", set.getString("birthdate"));
				obj.put("resume", set.getString("resume"));
				obj.put("uname", set.getString("uname"));
				obj.put("password", set.getString("password"));
				obj.put("firstname", set.getString("firstname"));
				obj.put("lastname", set.getString("lastname"));
				obj.put("birthdate", set.getString("birthdate"));
				obj.put("resume", set.getString("resume"));
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
