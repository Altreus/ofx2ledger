use v6;
use XML::Document;

class OSX is XML::Document {
    method transfer-list {
        self.lookfor(:TAG<BANKTRANLIST>, :SINGLE).nodes;
    }
}
