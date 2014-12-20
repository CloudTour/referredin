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
import com.cloudtour.referredin.service.db.task.DBAddLike;
import com.cloudtour.referredin.service.db.task.DBDeleteLike;
import com.cloudtour.referredin.service.db.task.DBGetLikeByUname;

/**
 * Servlet implementation class HandleLike
 */
public class HandleLike extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HandleLike() {
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

		if (action.equals("DBGetLikeByUname")) {
			handleGetLikeByUname(request, response);
		}
	}

	@SuppressWarnings("unchecked")
	private void handleGetLikeByUname(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String uname = request.getParameter("uname");
		DBWorker worker = DBManager.getInstance().getWorker();
		ResultSet set = worker.query(new DBGetLikeByUname(uname));

		// response
		JSONArray array = new JSONArray();
		try {
			while (set != null && set.next()) {
				JSONObject obj = new JSONObject();
				obj.put("uname", set.getString("uname"));
				obj.put("jid", set.getString("jid"));
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

		if (action.equals("DBAddLike")) {
			handleAddLike(request, response);
		} else if (action.equals("DBDeleteLike")) {
			handleDeleteLike(request, response);
		}
	}

	private void handleDeleteLike(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String uname = request.getParameter("uname");
		String jid = request.getParameter("jid");

		DBWorker worker = DBManager.getInstance().getWorker();
		if (worker.update(new DBDeleteLike(uname, jid)))
			response.getWriter().write("{\"result\": \"success\"}");
		else
			response.getWriter().write("{\"result\": \"Failed to delete.\"}");
		DBManager.getInstance().releaseWorker(worker);
	}

	private void handleAddLike(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String uname = request.getParameter("uname");
		String jid = request.getParameter("jid");
		DBWorker worker = DBManager.getInstance().getWorker();
		if (worker.update(new DBAddLike(uname, jid))) 
			response.getWriter().write("{\"result\": \"success\"}");
		else
			response.getWriter().write("{\"result\": \"Failed to add.\"}");
		DBManager.getInstance().releaseWorker(worker);	
	}

}
