//
//  StringExt.swift
//  SwiftUITextEditor
//
//  Created by Andreas Velounias on 30/03/2021.
//

import Foundation

extension String {
    func wordCount() -> Int {
        return self.split {
            $0 == " " || $0.isNewline
        }.count
    }
}
