<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

use CodeIgniter\I18n\Time;

class DataJenisPelaporanSeeder extends Seeder
{
    public function run()
    {
        $faker = \Faker\Factory::create('id_ID'); //indonesia

        $data = [
            [
                'jenis_pelaporan'    => 'Pungutan Liar',
                'created_at' => Time::createFromTimestamp($faker->unixTime()),
                'updated_at' => Time::now()
            ],
            [
                'jenis_pelaporan'    => 'ODP Gendong',
                'created_at' => Time::createFromTimestamp($faker->unixTime()),
                'updated_at' => Time::now()
            ],
            [
                'jenis_pelaporan'    => 'ODP Arisan',
                'created_at' => Time::createFromTimestamp($faker->unixTime()),
                'updated_at' => Time::now()
            ],
            [
                'jenis_pelaporan'    => 'Fraud Lainnya',
                'created_at' => Time::createFromTimestamp($faker->unixTime()),
                'updated_at' => Time::now()
            ]
        ];


        $this->db->table('datajenispelaporan')->insertBatch($data);



        // Simple Queries
        // $this->db->query("INSERT INTO datapersonnel (slug,nama,nik,nik_ta,loker,mitra,alamat,created_at,updated_at) VALUES(:slug:,:nama:,:nik:,:nik_ta:,:loker:,:mitra:,:alamat:,:created_at:,:updated_at:)", $data);

        // Using Query Builder
        // $this->db->table('datapersonnel')->insertBatch($data);
    }
}
