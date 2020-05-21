//
//  ViewController.swift
//  My Favorite Musician
//
//  Created by Fikri on 19/05/20.
//  Copyright © 2020 Fikri Helmi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var musisiTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Menambahkan title pada Navigation
        self.navigationItem.title = "My Favorite"
        
        
        //untuk menghubungkan Musisi Table View dengan metode metode dibawah
        musisiTableView.dataSource = self
        
        //menambahkan delegate ke table view
        musisiTableView.delegate = self
        
        
        // untuk menghubungkan xib untuk MusisiCellTableView dengan musisiTableView
        musisiTableView.register(UINib(nibName: "MusisiCellTableViewTableViewCell", bundle: nil), forCellReuseIdentifier: "CellMusisi")
        
    }

}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //rows setiap sectionnya sesuai jumlah array musisi
        return profilMusisi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //menghubungkan cell dengan identifier CellMusisi yang ada di xib
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellMusisi", for: indexPath) as! MusisiCellTableViewTableViewCell
        
        //memasukkan nilai variabel musisi yang mana objek dari array profilMusisi ke view cell
        let musisi = profilMusisi[indexPath.row]
        cell.namaMusisi.text = musisi.nama
        cell.fotoMusisi.image = musisi.foto
        cell.deskripsiMusisi.text = musisi.deskripsi
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //memanggil view controller dengan berkas xib didalamnya
        let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)
        
        //mengirim data ke musisi
        detail.musisi = profilMusisi[indexPath.row]
    
        
        //push view controller lain
        self.navigationController?.pushViewController(detail, animated: true)
        
    
        
    }
}


