<?php

class admin
{
    private string $felhasznalonev;
    private string $intezet;
    private string $tudomanyos_fokozat;
    private string $szakterulet;

    public function __construct(string $felhasznalonev, string $intezet, string $tudomanyos_fokozat, string $szakterulet)
    {
        $this->felhasznalonev = $felhasznalonev;
        $this->intezet = $intezet;
        $this->tudomanyos_fokozat = $tudomanyos_fokozat;
        $this->szakterulet = $szakterulet;
    }

    /**
     * @return string
     */
    public function getFelhasznalonev(): string
    {
        return $this->felhasznalonev;
    }

    /**
     * @param string $felhasznalonev
     */
    public function setFelhasznalonev(string $felhasznalonev): void
    {
        $this->felhasznalonev = $felhasznalonev;
    }

    /**
     * @return string
     */
    public function getIntezet(): string
    {
        return $this->intezet;
    }

    /**
     * @param string $intezet
     */
    public function setIntezet(string $intezet): void
    {
        $this->intezet = $intezet;
    }

    /**
     * @return string
     */
    public function getTudomanyosFokozat(): string
    {
        return $this->tudomanyos_fokozat;
    }

    /**
     * @param string $tudomanyos_fokozat
     */
    public function setTudomanyosFokozat(string $tudomanyos_fokozat): void
    {
        $this->tudomanyos_fokozat = $tudomanyos_fokozat;
    }

    /**
     * @return string
     */
    public function getSzakterulet(): string
    {
        return $this->szakterulet;
    }

    /**
     * @param string $szakterulet
     */
    public function setSzakterulet(string $szakterulet): void
    {
        $this->szakterulet = $szakterulet;
    }


}