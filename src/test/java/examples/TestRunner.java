package examples;

import com.intuit.karate.junit5.Karate;

class TestRunner {

    // Run all feature files in the "examples" directory
    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }

    // Run feature files in the "stage1" directory
    @Karate.Test
    Karate testStage1() {
        return Karate.run("stage1").relativeTo(getClass());
    }

    // Run a specific feature file
    @Karate.Test
    Karate testSpecificFeature() {
        return Karate.run("stage1/a.feature").relativeTo(getClass());
    }
}