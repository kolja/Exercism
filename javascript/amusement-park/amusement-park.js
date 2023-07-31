
export function createVisitor(name, age, ticketId) {
  return {
    name,
    age,
    ticketId
  }
}

export function revokeTicket(visitor) {
  visitor.ticketId = null;
  return visitor;
}

export function ticketStatus(tickets, ticketId) {
  const ticket = tickets[ticketId];
  return ticket === undefined ? 'unknown ticket id'
                              : ticket === null ? 'not sold'
                              : 'sold to ' + ticket;
}

export function simpleTicketStatus(tickets, ticketId) {
  const ticket = tickets[ticketId]
  return (ticket === undefined) || (ticket === null) ? 'invalid ticket !!!'
                                                     : ticket
}

export function gtcVersion(visitor) {
  return visitor.gtc?.version;
}
