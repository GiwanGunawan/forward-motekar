<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class DataWitelSeeder extends Seeder
{
	public function run()
	{
		$data = [
			[
				'witel'    => 'BOGOR'
			],
			[
				'witel'    => 'LAINNYA'
			],
		];

		$this->db->table('datawitel')->insertBatch($data);
	}
}
