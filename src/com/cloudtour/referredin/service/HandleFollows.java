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
import com.cloudtour.referredin.service.db.task.DBAddFollow;
import com.cloudtour.referredin.service.db.task.DBDeleteFollow;
import com.cloudtour.referredin.service.db.task.DBGetFollows;

/**
 * Servlet implementation class HandleFollows
 */
public class HandleFollows extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HandleFollows() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		handleGet(request,response);
		
	}


	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		if (action == null || action.isEmpty())
			return;
		
		if (action.equals("delete")) {
			handleDelete(request, response);
		} else if (action.equals("add")) {
			handleAdd(request, response);
		}
	}

	private void handleDelete(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String following = request.getParameter("following");

		DBWorker worker = DBManager.getInstance().getWorker();
		int out = worker.update(new DBDeleteFollow(uname, following));
		response.getWriter().write(out);
		DBManager.getInstance().releaseWorker(worker);
	}

	private void handleAdd(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String following = request.getParameter("following");

		DBWorker worker = DBManager.getInstance().getWorker();
		int out = worker.update(new DBAddFollow(uname, following));
		response.getWriter().write(out);
		DBManager.getInstance().releaseWorker(worker);
	}


	private void handleGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");

		// worker
		DBWorker worker = DBManager.getInstance().getWorker();
		ResultSet set = worker.query(new DBGetFollows(uname));

		// response
		JSONArray array = new JSONArray();
		try {
			while (set.next()) {
				JSONObject obj = new JSONObject();
				obj.put("uname", set.getString("uname"));
				obj.put("following", set.getString("following"));
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
