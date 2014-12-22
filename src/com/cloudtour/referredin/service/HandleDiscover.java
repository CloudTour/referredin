package com.cloudtour.referredin.service;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.cloudtour.referredin.service.db.DBManager;
import com.cloudtour.referredin.service.db.DBWorker;
import com.cloudtour.referredin.service.db.task.DBDiscoverJobs;
import com.cloudtour.referredin.service.db.task.DBDiscoverJobsByFollow;
import com.cloudtour.referredin.service.db.task.DBGetUser;

/**
 * Servlet implementation class HandleDiscover
 */
public class HandleDiscover extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HandleDiscover() {
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
		String action = request.getParameter("action");
		if (action == null || action.isEmpty())
			return;

		if (action.equals("DBDiscoverJobsByFollow")) {
			handleDiscoverJobsByFollow(request, response);
		} else if (action.equals("DBDiscoverFollowsByFollow")) {
			handleDiscoverFollowsByFollow(request, response);
		}
	}

	private void handleDiscoverFollowsByFollow(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
	}

	@SuppressWarnings("unchecked")
	private void handleDiscoverJobsByFollow(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String uname = request.getParameter("uname");

		// worker
		DBWorker worker = DBManager.getInstance().getWorker();
		ResultSet set = worker.query(new DBGetUser(uname));
		String skill = "";
		try {
			if (set == null || !set.next()) {
				response.getWriter().write("{\"result\": \"No skill\"}");
				return;
			}
			skill = set.getString("skill");
			if (skill == null || skill.isEmpty()) {
				response.getWriter().write("{\"result\": \"No skill\"}");
				return;
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		String[] skillList = skill.split(",");
		HashSet<String> skillSet = new HashSet<String>();
		for (String s : skillList) {
			skillSet.add(s.trim());
		}

		set = worker.query(new DBDiscoverJobsByFollow(uname));
		
		// response
		JSONArray array = new JSONArray();
		try {
			while (set != null && set.next()) {
				String[] jobSkills = set.getString("jskill").split(",");
				for (String s : jobSkills) {
					if (skillSet.contains(s.trim())) {
						JSONObject obj = new JSONObject();
						obj.put("uname", set.getString("uname"));
						obj.put("jid", set.getString("jid"));
						obj.put("jtitle", set.getString("jtitle"));
						obj.put("jcompany", set.getString("jcompany"));
						obj.put("jlocation", set.getString("jlocation"));
						obj.put("jpostdate", set.getString("jpostdate"));
						obj.put("jtype", set.getString("jtype"));
						obj.put("jindustry", set.getString("jindustry"));
						obj.put("jwebsite", set.getString("jwebsite"));
						obj.put("jskill", set.getString("jskill"));
						obj.put("friendfirstname",
								set.getString("friendfirstname"));
						obj.put("friendlastname",
								set.getString("friendlastname"));
						array.add(obj);
					}
				}
			}

			if (array.size() == 0) {
				set = worker.query(new DBDiscoverJobs(uname));
				while (set != null && set.next()) {
					String[] jobSkills = set.getString("jskill").split(",");
					for (String s : jobSkills) {
						if (skillSet.contains(s.trim())) {
							JSONObject obj = new JSONObject();
							obj.put("uname", set.getString("uname"));
							obj.put("jid", set.getString("jid"));
							obj.put("jtitle", set.getString("jtitle"));
							obj.put("jcompany", set.getString("jcompany"));
							obj.put("jlocation", set.getString("jlocation"));
							obj.put("jpostdate", set.getString("jpostdate"));
							obj.put("jtype", set.getString("jtype"));
							obj.put("jindustry", set.getString("jindustry"));
							obj.put("jwebsite", set.getString("jwebsite"));
							obj.put("jskill", set.getString("jskill"));
//							obj.put("friendfirstname",
//									set.getString("friendfirstname"));
//							obj.put("friendlastname",
//									set.getString("friendlastname"));
							array.add(obj);
						}
					}
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		response.getWriter().write(array.toJSONString());
		DBManager.getInstance().releaseWorker(worker);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
