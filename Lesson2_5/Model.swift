//
//  Model.swift
//  Lesson2_5
//
//  Created by Evgeny Mastepan on 04.12.2024.
//

import Foundation


struct TableItem {
    var image: String
    var text: String
    var descText: String? = nil
    
    static func mockData() -> [TableItem] {
        [
            TableItem(image: "1",  text: "Древобород"),
            TableItem(image: "2",  text: "Исильдур"),
            TableItem(image: "3",  text: "Келеборн"),
            TableItem(image: "5",  text: "Боромир"),
            TableItem(image: "6",  text: "Водный Страж"),
            TableItem(image: "7",  text: "Даин II Железностоп"),
            TableItem(image: "8",  text: "Гиль-галад"),
            TableItem(image: "9",  text: "Дэнетор II"),
            TableItem(image: "10", text: "Глорфиндел"),
            TableItem(image: "11", text: "Золотинка"),
        ]
    }
    static func mockActorsData() -> [TableItem] {
        [
            TableItem(image: "13", text: "Гэндальф", descText: "Йен МакКеллен"),
            TableItem(image: "14", text: "Галадриэль", descText: "Кейт Бланшетт"),
            TableItem(image: "15", text: "Арагорн", descText: "Виго Мортенсен"),
            TableItem(image: "16", text: "Дурин", descText: "Овайн Артур"),
            TableItem(image: "17", text: "Гимли", descText: "Джон Рис-Дэвис"),
            TableItem(image: "18", text: "Голлум", descText: "Энди Сёркис"),
            TableItem(image: "19", text: "Арвен", descText: "Лив Тайлер"),
            TableItem(image: "20", text: "Бильбо Бэггинс", descText: "Иэн Холм")
        ]
    }
}
