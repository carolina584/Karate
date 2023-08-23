import com.intuit.karate.junit5.Karate;

public class EmployeeRunner {


    @Karate.Test
    Karate testFeature() {
        return Karate.run("employee.feature").relativeTo(getClass());
    }
}
