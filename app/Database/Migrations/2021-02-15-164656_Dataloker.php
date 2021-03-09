<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Dataloker extends Migration
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
			'loker'      => [
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
		$this->forge->createTable('dataloker');
	}

	public function down()
	{
		$this->forge->dropTable('dataloker');
	}
}
