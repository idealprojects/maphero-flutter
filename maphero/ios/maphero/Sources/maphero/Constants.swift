import MapHero
/*
 * The mapping is based on the values defined here:
 *  https://docs.mapbox.com/android/api/map-sdk/8.4.0/constant-values.html
 */

class Constants {
    static let symbolIconAnchorMapping = [
        "center": MHIconAnchor.center,
        "left": MHIconAnchor.left,
        "right": MHIconAnchor.right,
        "top": MHIconAnchor.top,
        "bottom": MHIconAnchor.bottom,
        "top-left": MHIconAnchor.topLeft,
        "top-right": MHIconAnchor.topRight,
        "bottom-left": MHIconAnchor.bottomLeft,
        "bottom-right": MHIconAnchor.bottomRight,
    ]


    static let symbolTextJustificationMapping = [
        "auto": MHTextJustification.auto,
        "center": MHTextJustification.center,
        "left": MHTextJustification.left,
        "right": MHTextJustification.right,
    ]


    static let symbolTextAnchorMapping = [
        "center": MHTextAnchor.center,
        "left": MHTextAnchor.left,
        "right": MHTextAnchor.right,
        "top": MHTextAnchor.top,
        "bottom": MHTextAnchor.bottom,
        "top-left": MHTextAnchor.topLeft,
        "top-right": MHTextAnchor.topRight,
        "bottom-left": MHTextAnchor.bottomLeft,
        "bottom-right": MHTextAnchor.bottomRight,
    ]

    static let symbolTextTransformationMapping = [
        "none": MHTextTransform.none,
        "lowercase": MHTextTransform.lowercase,
        "uppercase": MHTextTransform.uppercase,
    ]

    static let lineJoinMapping = [
        "bevel": MHLineJoin.bevel,
        "miter": MHLineJoin.miter,
        "round": MHLineJoin.round,
    ]
}
