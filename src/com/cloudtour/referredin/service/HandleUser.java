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
import com.cloudtour.referredin.service.db.task.DBAddUser;
import com.cloudtour.referredin.service.db.task.DBAddUserWithSkill;
import com.cloudtour.referredin.service.db.task.DBAddUserskill;
import com.cloudtour.referredin.service.db.task.DBDeleteUserskill;
import com.cloudtour.referredin.service.db.task.DBGetUser;
import com.cloudtour.referredin.service.db.task.DBGetUserskill;
import com.cloudtour.referredin.service.db.task.DBGetUserskillByUname;
import com.cloudtour.referredin.service.db.task.DBUpdateUser;
import com.cloudtour.referredin.service.db.task.DBUpdateUserWithSkill;

/**
 * Servlet implementation class HandleUser
 */
public class HandleUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HandleUser() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// get parameters
		String uname = request.getParameter("uname");

		// worker
		DBWorker worker = DBManager.getInstance().getWorker();
		ResultSet set = worker.query(new DBGetUser(uname));

		// response
		JSONArray array = new JSONArray();
		try {
			while (set.next()) {
				JSONObject obj = new JSONObject();
				obj.put("uname", set.getString("uname"));
				obj.put("firstname", set.getString("firstname"));
				obj.put("lastname", set.getString("lastname"));
				obj.put("birthdate", set.getString("birthdate"));
				obj.put("resume", set.getString("resume"));
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		if (action == null || action.isEmpty())
			return;

		if (action.equals("update")) {
			handleUpdate(request, response);
		} else if (action.equals("add")) {
			handleAdd(request, response);
		} else if (action.equals("DBUpdateUserWithSkill")) {
			handleUpdateUserWithSkill(request, response);
		} else if (action.equals("DBAddUserWithSkill")) {
			handleAddUserWithSkill(request, response);
		} else if (action.equals("signin")) {
			handleSignIn(request, response);
		} else if (action.equals("DBAddUserskill")) {
			handleDBAddUserskill(request, response);
		} else if (action.equals("DBDeleteUserskill")) {
			handleDBDeleteUserskill(request, response);
		} else if (action.equals("DBGetUserskillByUname")) {
			handleDBGetUserskillByUname(request, response);
		} else if (action.equals("DBGetUserskill")) {
			handleDBGetUserskill(request, response);
		}
	}

	private void handleUpdateUserWithSkill(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String birthdate = request.getParameter("birthdate");
		String resume = request.getParameter("resume");
		String skill = request.getParameter("skill");

		DBWorker worker = DBManager.getInstance().getWorker();
		try {
			if (worker.update(new DBUpdateUserWithSkill(name, password, firstname,
					lastname, birthdate, resume, skill)))
				response.getWriter().write("{\"result\": \"success\"}");
			else
				response.getWriter().write(
						"{\"result\": \"Failed to update.\"}");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private void handleAddUserWithSkill(HttpServletRequest request,
			HttpServletResponse response) {
		String uname = request.getParameter("uname");
		String password = request.getParameter("password");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String birthdate = request.getParameter("birthdate");
		String resume = request.getParameter("resume");
		String skill = request.getParameter("skill");

		DBWorker worker = DBManager.getInstance().getWorker();
		try {
			if (worker.update(new DBAddUserWithSkill(uname, password,
					firstname, lastname, birthdate, resume, skill)))
				response.getWriter().write("{\"result\": \"success\"}");
			else
				response.getWriter().write("{\"result\": \"Failed to add.\"}");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	private void handleDBGetUserskill(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		DBWorker worker = DBManager.getInstance().getWorker();
		ResultSet set = worker.query(new DBGetUserskill());

		// response
		JSONArray array = new JSONArray();
		try {
			while (set != null && set.next()) {
				JSONObject obj = new JSONObject();
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

	@SuppressWarnings("unchecked")
	private void handleDBGetUserskillByUname(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String uname = request.getParameter("uname");
		DBWorker worker = DBManager.getInstance().getWorker();
		ResultSet set = worker.query(new DBGetUserskillByUname(uname));

		// response
		JSONArray array = new JSONArray();
		try {
			while (set != null && set.next()) {
				JSONObject obj = new JSONObject();
				obj.put("uname", set.getString("uname"));
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

	private void handleDBDeleteUserskill(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String uname = request.getParameter("uname");
		String skill = request.getParameter("skill");

		DBWorker worker = DBManager.getInstance().getWorker();
		if (worker.update(new DBDeleteUserskill(uname, skill)))
			response.getWriter().write("{\"result\": \"success\"}");
		else
			response.getWriter().write("{\"result\": \"Failed to delete.\"}");
		DBManager.getInstance().releaseWorker(worker);
	}

	private void handleDBAddUserskill(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String uname = request.getParameter("uname");
		String skill = request.getParameter("skill");
		DBWorker worker = DBManager.getInstance().getWorker();
		if (worker.update(new DBAddUserskill(uname, skill)))
			response.getWriter().write("{\"result\": \"success\"}");
		else
			response.getWriter().write("{\"result\": \"Failed to add.\"}");
		DBManager.getInstance().releaseWorker(worker);
	}

	@SuppressWarnings("unchecked")
	private void handleSignIn(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String password = request.getParameter("password");

		// worker
		DBWorker worker = DBManager.getInstance().getWorker();
		ResultSet set = worker.query(new DBGetUser(uname));

		try {
			JSONObject obj = new JSONObject();
			while (set.next()) {
				if (set.getString("password").equals(password)) {
					obj.put("result", "success");
					response.getWriter().write(obj.toJSONString());
					return;
				}
			}

			obj.put("result", "Username or password is invalid.");
			response.getWriter().write(obj.toJSONString());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBManager.getInstance().releaseWorker(worker);
		}

	}

	private void handleAdd(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String password = request.getParameter("password");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String birthdate = request.getParameter("birthdate");
		String resume = request.getParameter("resume");

		DBWorker worker = DBManager.getInstance().getWorker();
		if (worker.update(new DBAddUser(uname, password, firstname, lastname,
				birthdate, resume)))
			response.getWriter().write("{\"result\": \"success\"}");
		else
			response.getWriter().write("{\"result\": \"Failed to add.\"}");
	}

	private void handleUpdate(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String birthdate = request.getParameter("birthdate");
		String resume = request.getParameter("resume");

		DBWorker worker = DBManager.getInstance().getWorker();
		if (worker.update(new DBUpdateUser(name, password, firstname, lastname,
				birthdate, resume)))
			response.getWriter().write("{\"result\": \"success\"}");
		else
			response.getWriter().write("{\"result\": \"Failed to update.\"}");
	}

}
