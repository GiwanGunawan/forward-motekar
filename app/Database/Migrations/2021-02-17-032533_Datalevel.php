<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Datalevel extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'id'          => [
				'type'           => 'INT',
				'constraint'     => 11,
				'unsigned'       => true,
				'auto_increment' => true,
			],
			'slug'       => [
				'type'       => 'VARCHAR',
				'constraint' => '255',
				'null' => true,
			],
			'level' => [
				'type'       => 'VARCHAR',
				'constraint' => '255',
				'null' => true,
			],
			'created_at' => [
				'type' => 'DATETIME',
				'null' => true,
			],
			'updated_at' => [
				'type' => 'DATETIME',
				'null' => true,
			],
		]);
		$this->forge->addKey('id', true);
		$this->forge->createTable('datalevel');
	}

	public function down()
	{
		$this->forge->dropTable('datalevel');
	}
}
