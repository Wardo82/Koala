<?php

/**
 * Class MysqliDb
 */
class MysqliDb
{
    /**
     * @var \MysqliDb
     */
    private static $instance;

    /**
     * @var \mysqli
     */
    private $conn;

    /**
     * Db constructor.
     */
    private function __construct()
    {
        $this->conn = new \mysqli(
            DATABASE_HOST,
            DATABASE_USER,
            DATABASE_PASSWORD,
            DATABASE_NAME
        );

        if ($this->conn->connect_errno) {
            echo sprintf('Connection failed: %s', $this->conn->connect_error);
            die;
        }

        $this->conn->set_charset('UTF-8');
    }

    /**
     * @return MysqliDb
     */
    public static function getInstance(): self
    {
        if (self::$instance === null) {
            self::$instance = new self();
        }

        return self::$instance;
    }
}

?>
