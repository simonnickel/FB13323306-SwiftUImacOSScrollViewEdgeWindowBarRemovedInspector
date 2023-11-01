//
//  ContentView.swift
//  SwiftUImacOSScrollViewEdgeWindowBar
//
//  Created by Simon Nickel on 01.11.23.
//

import SwiftUI

struct ContentView: View {
	
	@State private var selected: Int? = 1
	@State private var showInspector: Bool = false
	
    var body: some View {
		NavigationSplitView {
			List(selection: $selected) {
				Label("List", systemImage: "circle").tag(1)
			}
		} detail: {
			List {
				Text("List Content")
			}
			.navigationTitle("List")
			.toolbar {
				ToolbarItem(placement: .automatic) {
					Button {
						showInspector.toggle()
					} label: {
						Label("open", systemImage: "rectangle")
					}
				}
			}
		}
		.inspector(isPresented: $showInspector) {
			Text("Inspector")
		}

    }
}

#Preview {
    ContentView()
}
