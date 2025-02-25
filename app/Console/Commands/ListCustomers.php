<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use App\Models\Customer;

class ListCustomers extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'customers:list';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'List all customers from the database';

    /**
     * Execute the console command.
     */
    public function handle()
    {
       //$customers = Customer::all();

        # Descomentar para probar el error de la tabla no encontrada
        $customers = DB::table('customer')
            ->select('customer_id', 'first_name', 'last_name', 'email', 'active')
            ->get();

        # Descomentar para probar Eloquient utilizando el modelo con conexion especifica
        // $customers = Customer::select('customer_id', 'first_name', 'last_name', 'email', 'active')->get();
        // print_r( $customers->toArray());

        # Descomentar para pronar query RAW
        // $customers = DB::select("SELECT * FROM customer");
        // print_r( $customers);

        # Descomentar para probar con Query Builder con conexion especifica
        // $customers = DB::connection('mysql_no_prefix')->table('customer')->get();
        // print_r( $customers);

    }
}
