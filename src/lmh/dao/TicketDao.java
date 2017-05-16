package lmh.dao;

import domain.Ticket;

public interface TicketDao {
	public Ticket[] getTickets(String title);
	public int makeTicket(String title); // 전체 틀 만들기
	public int setTicket(String seat, String grade, String state); // 각 seat 채우기
}