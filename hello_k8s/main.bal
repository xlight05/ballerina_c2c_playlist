import ballerina/http;
service / on new http:Listener(9090) {
    resource function get sayHello() returns string {
        return "Hello, Kubernetes!";
    }
}

