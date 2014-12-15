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
import com.cloudtour.referredin.service.db.task.DBGetUser;
import com.cloudtour.referredin.service.db.task.DBUpdateUser;

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
		}
	}

	private void handleAdd(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String birthdate = request.getParameter("birthdate");
		String resume = request.getParameter("resume");

		DBWorker worker = DBManager.getInstance().getWorker();
		worker.update(new DBAddUser(name, password, firstname, lastname, 
				birthdate, resume));
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
		worker.update(new DBUpdateUser(name, password, firstname, lastname, 
				birthdate, resume));
	}

}
