//
//  DetailViewController.swift
//  My Favorite Musician
//
//  Created by Fikri on 20/05/20.
//  Copyright © 2020 Fikri Helmi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

 
    @IBOutlet weak var fotoMusisi: UIImageView!
    @IBOutlet weak var namaMusisi: UILabel!
    @IBOutlet weak var namaAsli: UILabel!
    @IBOutlet weak var TTL: UILabel!
    @IBOutlet weak var isiTTL: UILabel!
    @IBOutlet weak var Genre: UILabel!
    @IBOutlet weak var isiGenre: UILabel!
    @IBOutlet weak var fotoSong1: UIImageView!
    @IBOutlet weak var fotoSong2: UIImageView!
    @IBOutlet weak var fotoSong3: UIImageView!
    @IBOutlet weak var song1: UILabel!
    @IBOutlet weak var song2: UILabel!
    @IBOutlet weak var song3: UILabel!
    @IBOutlet weak var deskripsiMusisi: UILabel!
    
    //menampung data struct Musisi
    var musisi: Musisi?
    
    var indexPath: IndexPath!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //memasukkan nilai Musisi ke beberapa view yang ada
        if let hasil = musisi {
            fotoMusisi.image = hasil.foto
            namaMusisi.text = hasil.nama
            namaAsli.text = hasil.namaAsli
            TTL.text = hasil.TTL
            isiTTL.text = hasil.isiTTL
            Genre.text = hasil.genre
            isiGenre.text = hasil.isiGenre
            fotoSong1.image = hasil.fotoSong1
            fotoSong2.image = hasil.fotoSong2
            fotoSong3.image = hasil.fotoSong3
            song1.text = hasil.song1
            song2.text = hasil.song2
            song3.text = hasil.song3
            deskripsiMusisi.text = hasil.deskripsi
        }
        
        //navigationItem.largeTitleDisplayMode = .always
        navigationItem.title = "Detail"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


