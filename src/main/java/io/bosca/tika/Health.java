package io.bosca.tika;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;

@Path("/health")
public class Health {

    @GET
    @Path("")
    @Produces(MediaType.TEXT_PLAIN)
    public String check() {
        return "OK";
    }
}
