<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Dataappreciate extends Migration
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
			'nik' => [
				'type'       => 'VARCHAR',
				'constraint' => '255',
				'null' => true,
			],
			'level' => [
				'type'       => 'VARCHAR',
				'constraint' => '255',
				'null' => true,
			],
			'tanggal_appreciate' => [
				'type' => 'DATE',
				'null' => true,
			],
			'keterangan' => [
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
		$this->forge->createTable('dataappreciate');
	}

	public function down()
	{
		$this->forge->dropTable('dataappreciate');
	}
}
