//
//  RusLossesWidget.swift
//  RusLossesWidget
//
//  Created by admin on 21.07.2022.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    @AppStorage("day", store: UserDefaults(suiteName: "group.equipments"))
    var day: Int = 0
    @AppStorage("tank", store: UserDefaults(suiteName: "group.equipments"))
    var tank: Int = 0
    @AppStorage("APC", store: UserDefaults(suiteName: "group.equipments"))
    var apc: Int = 0
    @AppStorage("helicopter", store: UserDefaults(suiteName: "group.equipments"))
    var helicopter: Int = 0
    @AppStorage("artillery", store: UserDefaults(suiteName: "group.equipments"))
    var artillery: Int = 0
    @AppStorage("aircraft", store: UserDefaults(suiteName: "group.equipments"))
    var aircraft: Int = 0
    @AppStorage("MRL", store: UserDefaults(suiteName: "group.equipments"))
    var mrl: Int = 0
    @AppStorage("drone", store: UserDefaults(suiteName: "group.equipments"))
    var drone: Int = 0
    @AppStorage("navalShip", store: UserDefaults(suiteName: "group.equipments"))
    var navalShip: Int = 0
    
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), day: 0, tank: 0, apc: 0, helicopter: 0, artillery: 0, aircraft: 0, mrl: 0, drone: 0, navalShip: 0)
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(),day: 0, tank: 0, apc: 0, helicopter: 0, artillery: 0, aircraft: 0, mrl: 0, drone: 0, navalShip: 0)
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(
                date: entryDate,
                day: day,
                tank: tank,
                apc: apc,
                helicopter: helicopter,
                artillery: artillery,
                aircraft: aircraft,
                mrl: mrl,
                drone: drone,
                navalShip: navalShip
            )

            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let day: Int
    let tank: Int
    let apc: Int
    let helicopter: Int
    let artillery: Int
    let aircraft: Int
    let mrl: Int
    let drone: Int
    let navalShip: Int
}

struct RusLossesWidgetEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        ZStack {
            Color(Constants.UI.backgroundColor)
                .ignoresSafeArea()
            VStack {
                Text(String("Invasion day \(entry.day)")).foregroundColor(.white)
                HStack(alignment: .center) {
                    Image(uiImage: .tank)
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text(String("\(entry.tank)"))
                    Image(uiImage: .APC)
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text(String("\(entry.apc)"))

                }

                HStack(alignment: .center) {
                    Image(uiImage: .helicopter)
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text(String("\(entry.helicopter)"))
                    Image(uiImage: .artillery)
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text(String("\(entry.artillery)"))

                }

                HStack(alignment: .center) {
                    Image(uiImage: .jet)
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text(String("\(entry.aircraft)"))
                    Image(uiImage: .MRL)
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text(String("\(entry.mrl)"))

                }

                HStack(alignment: .center) {
                    Image(uiImage: .drone)
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text(String("\(entry.drone)"))
                    Image(uiImage: .ship)
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text(String("\(entry.navalShip)"))
                }
            }
        }
    }
}

struct RusLossesWidgetBundle: WidgetBundle {
    @WidgetBundleBuilder
    var body: some Widget {
        RusLossesWidget()
    }
}

@main
struct RusLossesWidget: Widget {
    let kind: String = "RusLossesWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            RusLossesWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
        .supportedFamilies([.systemSmall])
    }
}

struct RusLossesWidget_Previews: PreviewProvider {
    static var previews: some View {
        RusLossesWidgetEntryView(entry: SimpleEntry(date: Date(), day: 0,tank: 0, apc: 0, helicopter: 0, artillery: 0, aircraft: 0, mrl: 0, drone: 0, navalShip: 0))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
