<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 货物的模型
 * @author: maqiang@dachuwang.com
 * @version: 1.0.0
 * @since: 2014-12-10
 */
class MBilling_log extends MY_Model {
    use MemAuto;

    private $table = 't_billing_log';

    public function __construct() {
        parent::__construct($this->table);
    }

}

/* End of file mbilling.php */
/* Location: :./application/models/mbilling.php */
