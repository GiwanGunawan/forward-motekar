<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class DataLokerSeeder extends Seeder
{
	public function run()
	{
		$data = [
			[
				'loker'    => 'ASO'
			],
			[
				'loker'    => 'WAN'
			],
			[
				'loker'    => 'CCAN'
			],
			[
				'loker'    => 'AMQE'
			],
			[
				'loker'    => 'DAMAN'
			],
			[
				'loker'    => 'OPTIMA'
			],
		];

		$this->db->table('dataloker')->insertBatch($data);
	}
}
