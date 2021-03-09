<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class DataStreamSeeder extends Seeder
{
	public function run()
	{
		$data = [
			[
				'stream'    => 'ASSURANCE'
			],
			[
				'stream'    => 'PROVISIONING'
			],
			[
				'stream'    => 'HELPDESK'
			],
			[
				'stream'    => 'ADMIN'
			],
			[
				'stream'    => 'LAINNYA'
			],
		];

		$this->db->table('datastream')->insertBatch($data);
	}
}
