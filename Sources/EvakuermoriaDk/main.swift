import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct EvakuermoriaDk: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://github.com/Vithanco/evakuateMoria.git")!
    var name = "Evakuer Moria"
    var description = "A description of EvakuermoriaDk"
    var language: Language { .danish }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try EvakuermoriaDk().publish(withTheme: .foundation, deployedUsing: .gitHub("Vithanco/evakuateMoria"))
