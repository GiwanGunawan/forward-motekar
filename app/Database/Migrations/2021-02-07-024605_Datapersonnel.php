<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Datapersonnel extends Migration
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
			'nama' => [
				'type'       => 'VARCHAR',
				'constraint' => '255',
				'null' => true,
			],
			'nik' => [
				'type'       => 'VARCHAR',
				'constraint' => '255',
				'null' => true,
			],
			'nik_ta' => [
				'type'       => 'VARCHAR',
				'constraint' => '255',
				'null' => true,
			],
			'loker' => [
				'type'       => 'VARCHAR',
				'constraint' => '255',
				'null' => true,
			],
			'stream' => [
				'type'       => 'VARCHAR',
				'constraint' => '255',
				'null' => true,
			],
			'sto' => [
				'type'       => 'VARCHAR',
				'constraint' => '255',
				'null' => true,
			],
			'witel' => [
				'type'       => 'VARCHAR',
				'constraint' => '255',
				'null' => true,
			],
			'mitra' => [
				'type'       => 'VARCHAR',
				'constraint' => '255',
				'null' => true,
			],
			'alamat' => [
				'type'       => 'VARCHAR',
				'constraint' => '255',
				'null' => true,
			],
			'upload_gambar' => [
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
		$this->forge->createTable('datapersonnel');
	}

	public function down()
	{
		$this->forge->dropTable('datapersonnel');
	}
}
