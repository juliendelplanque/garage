baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec
			package: 'JSON';
			package: 'Garage';
			package: 'Garage-Mysql' with: [ spec requires: #('Garage' ) ];
			package: 'Garage-Sqlite3' with: [spec requires: #('Garage' )];
			package: 'Garage-Postgres' with: [spec requires: #('Garage' 'JSON' )].
		spec 
			group: 'default' with: #('ALL' );
			group: 'mysql' with: #('Garage-Mysql' );
			group: 'sqlite3' with: #('Garage-Sqlite3' );			
			group: 'pgsqlV2' with: #('Garage-Postgres' );
			group: 'postgresV2' with: #('Garage-Postgres' ) ].
