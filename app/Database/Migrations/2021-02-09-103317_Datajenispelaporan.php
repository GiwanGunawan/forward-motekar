<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Datajenispelaporan extends Migration
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
			'jenis_pelaporan'      => [
				'type'       => 'VARCHAR',
				'constraint' => '255',
				'null' => true,
			],
			'jumlah_jenis_pelaporan'    => [
				'type'       => 'INT',
				'constraint' => '11',
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
		$this->forge->createTable('datajenispelaporan');
	}

	public function down()
	{
		$this->forge->dropTable('datajenispelaporan');
	}
}
