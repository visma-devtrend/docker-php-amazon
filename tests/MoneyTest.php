<?php
class MoneyTest extends PHPUnit_Framework_TestCase
{
    // ...

    public function testCanBeNegated()
    {
        $a = 1;
        // Assert
        $this->assertEquals(1, $a);
    }

}