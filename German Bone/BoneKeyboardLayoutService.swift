//
//  BoneKeyboardLayoutProvider.swift
//  German (Bone)
//
//  Created by Jean-Pierre Höhmann on 2023-12-06.
//
//

import Foundation
import KeyboardKit


class BoneKeyboardLayoutService: KeyboardLayoutService {
    
    /// The locale identifier.
    ///
    public static var localeKey: String {
        Locale.german.identifier
    }
    
    /// The input set to use for alphanumeric keyboards.
    ///
    public static var alphabeticInputSet: KeyboardLayout.InputSet {
        KeyboardLayout.InputSet(rows: [
            KeyboardLayout.InputSet.ItemRow(chars: "jduaxphlmwq"),
            KeyboardLayout.InputSet.ItemRow(chars: "ctieobnrsgß"),
            KeyboardLayout.InputSet.ItemRow(lowercased: "fvüäöyz,.k", uppercased: "FVÜÄÖYZ–•K")
        ])
    }
    
    /// The input set to use for numeric keyboards.
    ///
    public static var numericInputSet: KeyboardLayout.InputSet {
        KeyboardLayout.InputSet(rows: [
            KeyboardLayout.InputSet.ItemRow(chars: "1234567890'"),
            KeyboardLayout.InputSet.ItemRow(chars: "\\/{}*?()-:@"),
            KeyboardLayout.InputSet.ItemRow(chars: "°§ℓ»«$€„“”"),
        ])
    }
    
    /// The input set to use for symbolic keyboards.
    ///
    public static var symbolicInputSet: KeyboardLayout.InputSet {
        KeyboardLayout.InputSet(rows: [
            KeyboardLayout.InputSet.ItemRow(chars: "#$|~`+%\"'; "),
            KeyboardLayout.InputSet.ItemRow(chars: "…_[]^!<>=&ſ"),
            KeyboardLayout.InputSet.ItemRow(chars: "¹²³›‹¢¥‚‘’")
        ])
    }
    
    func keyboardLayout(for context: KeyboardContext) -> KeyboardLayout {
        // Currently there is no device-specific layout.  If there were, we'd switch on context.deviceType here.
        iPhoneBoneKeyboardLayoutService(
            alphabeticInputSet: BoneKeyboardLayoutService.alphabeticInputSet,
            numericInputSet: BoneKeyboardLayoutService.numericInputSet,
            symbolicInputSet: BoneKeyboardLayoutService.symbolicInputSet)
            .keyboardLayout(for: context)
    }

}
