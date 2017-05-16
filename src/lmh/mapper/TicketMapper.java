package lmh.mapper;

import domain.Ticket;

public interface TicketMapper {
	public Ticket[] getTickets(String title);
	public int makeTicket(String title);
	public int setTicket(String seat, String grade, String state);
}
