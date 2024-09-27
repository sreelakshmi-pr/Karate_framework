package com.automation.runner;

import com.intuit.karate.junit5.Karate;

public class TestRunner {

    @Karate.Test
    Karate testSuite() {
        //to create cucumber karate report
        return Karate.run("classpath:features").
                outputCucumberJson(true).
                reportDir("Cucumber-karate");
    }
}
