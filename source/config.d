import core.stdc.stdlib;

import std.stdio;
import std.getopt;

import dyaml;

Node Data;

void configure(string[] arguments) {
    GetoptResult parsedArguments;
    string config;
    parsedArguments = getopt(
            arguments,
            "c|config", &config);
    if (parsedArguments.helpWanted) {
        defaultGetoptPrinter("Usage:", parsedArguments.options);
        exit(0);
    }

    Node root = Loader.fromFile(config).load();
    Data = root["data"];
}
