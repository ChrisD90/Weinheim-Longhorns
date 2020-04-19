//
//  NewsTableController.swift
//  Weinheim Longhorns
//
//  Created by Chris on 19.04.20.
//  Copyright © 2020 Chris. All rights reserved.
//

import UIKit

class NewsTableController: UITableViewController {
    
     var news: [News] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad();
        createNews();
        self.tableView.rowHeight = 280;
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let news = self.news[indexPath.row];
        let cell = tableView.dequeueReusableCell(withIdentifier: "news") as! NewsCellController;
        cell.setProperties(news: news);
        return cell;
    }
    
    func createNews() {
        
        var keys: [String] = ["Sieg", "Longhorn", "Siegesserie"];
        
        let news1 = News(title: "Was ein schöner Titel", keywords: keys, text: "Hier steht ein Beipieltext von solch einer Schönheit, dass hier direkt der Text umgebrochen werden muss!", date: "22.03.2020 - 10:34Uhr", image: UIImage(named: "Avatar_02")!, tag: "anyTag");
        
        let news2 = News(title: "Was ein schöner Titel 2", keywords: keys, text: "Hier steht ein Beipieltext von solch einer Schönheit, dass hier direkt der Text umgebrochen werden muss!", date: "24.03.2045 - 10:34Uhr", image: UIImage(named: "Avatar_01")!, tag: "anyTag");
        
        news.append(news1);
        news.append(news2);
    }
}
