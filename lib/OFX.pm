use v6;

use XML;

role OFX::TransferList {
}

role OFX {
    multi method transfer-list(XML::Document:) {
        map { $_ but OFX::TransferList }, self.lookfor(:TAG<BANKTRANLIST>, :SINGLE).nodes;
    }
}
