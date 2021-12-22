import org.graalvm.polyglot.Context;
import org.graalvm.polyglot.Value;

// javac ./javascript/Test.java
// java -classpath ./javascript/ Test

public class Test {

    public static void main(String[] args) {

        try (Context context = Context.newBuilder("js").option("js.ecmascript-version", "2020").build()) {
            Value jsFunction = context.eval("js", "" +
                    "(function demoFunction(param) {    \n" +
                    "console.log(param);    \n" +
                    "return param.toUpperCase() \n" +
                    "})");
            Value result = jsFunction.execute("Javascript");
            System.out.println(result.asString());
        }

    }

}