import Foundation
import SwiftFTDI

do {
    let ftdi = try FTDI()
    try ftdi.setInterface(.A)
    // Change to your FTDI chip. This one was tested on FT232HQ.
    try ftdi.usbOpenDescIndex(vendor: 0x0403, product: 0x6014)
    try ftdi.setBitmode(bitmask: 0xFF, mode: .bitbang)

    while true {
        try ftdi.writeData(Data([0xff]))
        usleep(128000)
        try ftdi.writeData(Data([0x00]))
        usleep(128000)
    }
} catch {
    print(error)
}
