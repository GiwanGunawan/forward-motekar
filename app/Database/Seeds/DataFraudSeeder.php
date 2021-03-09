<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

use CodeIgniter\I18n\Time;

class DataFraudSeeder extends Seeder
{
    public function run()
    {
        // $data = [
        //     [
        //         'slug' => 'Giwan Gunawan',
        //         'nama'    => 'giwan-gunawan',
        //         'nik'    => '123456789',
        //         'nik_ta'    => '987654321',
        //         'loker'    => 'witel bogor',
        //         'mitra'    => 'ikik',
        //         'alamat'    => 'jalan raya bogor',
        //         'created_at' => Time::now(),
        //         'updated_at' => Time::now()
        //     ],

        //     [
        //         'slug' => 'Zahra Babeth',
        //         'nama'    => 'zahra-babeth',
        //         'nik'    => '123456789',
        //         'nik_ta'    => '987654321',
        //         'loker'    => 'witel bogor',
        //         'mitra'    => 'ikik',
        //         'alamat'    => 'jalan raya bogor',
        //         'created_at' => Time::now(),
        //         'updated_at' => Time::now()
        //     ],
        // ];
        $faker = \Faker\Factory::create('id_ID'); //indonesia
        for ($i = 0; $i < 5; $i++) {
            $data = [
                [
                    'slug' => $faker->name,
                    'nik'    => '30055363',
                    'jenis_pelaporan'    => 'ODP Gendong',
                    'label_odp'    => $faker->streetName,
                    'pelapor'    => $faker->streetName,
                    'hp_pelapor'    => $faker->name,
                    'tanggal_pelaporan'    => Time::now(),
                    'evident_fraud'    => $faker->company,
                    'keterangan'    => $faker->streetName,
                    'created_at' => Time::createFromTimestamp($faker->unixTime()),
                    'updated_at' => Time::now()
                ],

                [
                    'slug' => $faker->name,
                    'nik'    => '30055363',
                    'jenis_pelaporan'    => 'Pungutan Liar',
                    'label_odp'    => $faker->streetName,
                    'pelapor'    => $faker->streetName,
                    'hp_pelapor'    => $faker->name,
                    'tanggal_pelaporan'    => Time::now(),
                    'evident_fraud'    => $faker->company,
                    'keterangan'    => $faker->streetName,
                    'created_at' => Time::createFromTimestamp($faker->unixTime()),
                    'updated_at' => Time::now()
                ],

                [
                    'slug' => $faker->name,
                    'nik'    => '36376',
                    'jenis_pelaporan'    => 'ODP Gendong',
                    'label_odp'    => $faker->streetName,
                    'pelapor'    => $faker->streetName,
                    'hp_pelapor'    => $faker->name,
                    'tanggal_pelaporan'    => Time::now(),
                    'evident_fraud'    => $faker->company,
                    'keterangan'    => $faker->streetName,
                    'created_at' => Time::createFromTimestamp($faker->unixTime()),
                    'updated_at' => Time::now()
                ],

                [
                    'slug' => $faker->name,
                    'nik'    => '36376',
                    'jenis_pelaporan'    => 'ODP Gendong',
                    'label_odp'    => $faker->streetName,
                    'pelapor'    => $faker->streetName,
                    'hp_pelapor'    => $faker->name,
                    'tanggal_pelaporan'    => Time::now(),
                    'evident_fraud'    => $faker->company,
                    'keterangan'    => $faker->streetName,
                    'created_at' => Time::createFromTimestamp($faker->unixTime()),
                    'updated_at' => Time::now()
                ]
            ];

            $this->db->table('datafraud')->insertBatch($data);
        }


        // Simple Queries
        // $this->db->query("INSERT INTO datapersonnel (slug,nama,nik,nik_ta,loker,mitra,alamat,created_at,updated_at) VALUES(:slug:,:nama:,:nik:,:nik_ta:,:loker:,:mitra:,:alamat:,:created_at:,:updated_at:)", $data);

        // Using Query Builder
        // $this->db->table('datapersonnel')->insertBatch($data);
    }
}
