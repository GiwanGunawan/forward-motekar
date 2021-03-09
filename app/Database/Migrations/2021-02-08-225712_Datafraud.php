<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Datafraud extends Migration
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
			'jenis_pelaporan' => [
				'type'       => 'VARCHAR',
				'constraint' => '255',
				'null' => true,
			],
			'label_odp' => [
				'type'       => 'VARCHAR',
				'constraint' => '255',
				'null' => true,
			],
			'pelapor' => [
				'type'       => 'VARCHAR',
				'constraint' => '255',
				'null' => true,
			],
			'hp_pelapor' => [
				'type'       => 'VARCHAR',
				'constraint' => '255',
				'null' => true,
			],
			'tanggal_pelaporan' => [
				'type' => 'DATE',
				'null' => true,
			],
			'evident_fraud' => [
				'type'       => 'VARCHAR',
				'constraint' => '255',
				'null' => true,
			],
			'keterangan' => [
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
		$this->forge->createTable('datafraud');
	}

	public function down()
	{
		$this->forge->dropTable('datafraud');
	}
}
