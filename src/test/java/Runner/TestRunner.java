package Runner;

import org.junit.runner.RunWith;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;


@RunWith(Cucumber.class)
@CucumberOptions( 
		features="src/test/resources/Features/TC16-OutwardPaymentflow.feature"
		,glue= {"StepDefination"}
		,monochrome=true
		,dryRun=false	
		//,tags=  " @TC_15_09_OnusPaymentflowwithExceptionfromQueuedToFinalPosting "
		,plugin = {"pretty", "html:target/cucumber-html-report",
				"com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:"}

		)

public class TestRunner {

}