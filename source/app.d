import std.stdio;

import config;
import dyaml;

void main(string[] arguments) {
    configure(arguments);
    foreach (ref Node key, ref Node value; Data) {
        writeln(key.as!string, " ", value.as!string);
    }
}
