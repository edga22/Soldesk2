package lmh.dao;

import lmh.mapper.TicketMapper;
import config.Factory;
import domain.Ticket;

public class TicketDaoImpl implements TicketDao{
	TicketMapper ticketMapper;	
	
	public TicketDaoImpl() {
		ticketMapper = Factory.getMapper(TicketMapper.class);
	}
	
	public Ticket[] getTickets(String title){
		return ticketMapper.getTickets(title);
	}
	public int makeTicket(String title){
		return ticketMapper.makeTicket(title);
	}
	public int setTicket(String seat, String grade, String state){
		return ticketMapper.setTicket(seat, grade, state);
	}

}
