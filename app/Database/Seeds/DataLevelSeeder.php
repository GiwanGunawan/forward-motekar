<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class DatalevelSeeder extends Seeder
{
	public function run()
	{
		$data = [
			[
				'level'    => 'UBIS'
			],
			[
				'level'    => 'DATEL'
			],
			[
				'level'    => 'WITEL'
			],
			[
				'level'    => 'REGIONAL'
			],
			[
				'level'    => 'NASIONAL'
			],
		];

		$this->db->table('datalevel')->insertBatch($data);
	}
}
