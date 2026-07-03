package examples;

import com.intuit.karate.junit5.Karate;

class TestRunner {

    // Run all feature files in the "examples" directory
    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }

    // Run all features tagged with @stage1
    @Karate.Test
    Karate testStage1() {
        return Karate.run().tags("@stage1").relativeTo(getClass());
    }

    // Run all features tagged with @stage2
    @Karate.Test
    Karate testStage2() {
        return Karate.run().tags("@stage2").relativeTo(getClass());
    }

    // Run all features tagged with @stage3
    @Karate.Test
    Karate testStage3() {
        return Karate.run().tags("@stage3").relativeTo(getClass());
    }
}