package org.demo.jerseyrest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Component;

@Component
@Path(value="/")
public class RestResource {

	@Path("/adminMessage")
	@GET
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public Response adminMessage() {
		return Response.status(Status.ACCEPTED).entity("Hello to Admin from Jersy Rest Spring").build();
	}
	
	@Path("/userMessage")
	@GET
	@PreAuthorize("hasRole('ROLE_USER')")
	public Response userMessage() {
		return Response.status(Status.ACCEPTED).entity("Hello to User Jersy Rest Spring").build();
	}
}
