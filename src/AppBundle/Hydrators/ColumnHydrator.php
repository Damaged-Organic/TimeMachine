<?php
// src/AppBundle/Hydrators/ColumnHydrator.php
namespace AppBundle\Hydrators;

use PDO;

use Doctrine\ORM\Internal\Hydration\AbstractHydrator;

class ColumnHydrator extends AbstractHydrator
{
    protected function hydrateAllData()
    {
        return $this->_stmt->fetchAll(PDO::FETCH_COLUMN);
    }
}
