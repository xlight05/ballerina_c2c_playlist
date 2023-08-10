import ballerina/io;
import ballerina/http;
service / on new http:Listener(9090) {
    resource function get sayHello() returns string|error {
        string message = check io:fileReadString("./files/message.txt");
        return "Hello " + message;
    }
}
