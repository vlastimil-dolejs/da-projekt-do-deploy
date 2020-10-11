package cz.diribet.czechitas.dodeploy;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author vlasta
 */
@RestController
public class Controller {

    @GetMapping("/")
    public ResponseEntity<String> get() {
        return ResponseEntity.ok("Hi, I'm Java service");
    }

}
