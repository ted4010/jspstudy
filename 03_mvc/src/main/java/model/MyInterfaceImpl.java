package model;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

import common.ActionForward;
import jakarta.servlet.http.HttpServletRequest;

public class MyInterfaceImpl implements MyInterface {

  @Override
  public ActionForward getDate(HttpServletRequest request) {
    request.setAttribute("date", DateTimeFormatter.ofPattern("yyyy. MM. dd.").format(LocalDate.now()));
    return new ActionForward("/view/date.jsp", false);
  }

  @Override
  public ActionForward getTime(HttpServletRequest request) {
    request.setAttribute("time", DateTimeFormatter.ofPattern("HH:mm:ss.SSS").format(LocalTime.now()));
    return new ActionForward("/view/time.jsp", false);
  }

  @Override
  public ActionForward getDateTime(HttpServletRequest request) {
    request.setAttribute("datetime", DateTimeFormatter.ofPattern("yyyy. MM. ss. HH:mm:ss.SSS").format(LocalDateTime.now()));
    return new ActionForward("/view/datetime.jsp", false);
  }

}