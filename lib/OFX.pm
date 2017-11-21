use v6;
use XML::Document;

role OFX {
    multi method transfer-list(XML::Document:) {
        ($_ but OFX::TransferList for .lookfor(:TAG<BANKTRANLIST>, :SINGLE).nodes);
    }
}

role OFX::TransferList {
}
