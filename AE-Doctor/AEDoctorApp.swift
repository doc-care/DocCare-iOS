import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.allowsBackForwardNavigationGestures = true
        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        if webView.url == nil {
            webView.load(URLRequest(url: url))
        }
    }
}

@main
struct AEDoctorApp: App {
    var body: some Scene {
        WindowGroup {
            WebView(
                url: URL(string: "https://doc-care-backend.onrender.com/admin/")!
            )
            .ignoresSafeArea()
        }
    }
}
