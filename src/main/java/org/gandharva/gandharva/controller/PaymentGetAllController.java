package org.gandharva.gandharva.controller;

import com.google.gson.Gson;
import org.gandharva.gandharva.dao.PaymentDAO;
import org.gandharva.gandharva.dao.RequestDAO;
import org.gandharva.gandharva.model.Payment;
import org.gandharva.gandharva.model.Request;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class PaymentGetAllController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession session = req.getSession();
        String userId = (String) session.getAttribute("id");

        System.out.println("UserId: "+userId);

        if (session.getAttribute("id") == null) {
            resp.sendRedirect("Astrologer_Login.jsp");
            return;
        }

//        String userId = "fa993a0b-fe39-4df9-b7f6-183084c5d24c";
//        UUID userId = UUID.fromString(idString);

        try {
            List<Payment> payments = PaymentDAO.getAllPaymentDetailsByRequestId(userId);
            Gson gson = new Gson();
            String requestJSON = gson.toJson(payments);
            resp.setContentType("application/json");
            resp.setCharacterEncoding("UTF-8");
            resp.getWriter().write(requestJSON);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
