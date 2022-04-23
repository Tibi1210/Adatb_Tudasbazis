<?php

class user
{
    private string $felhasznalonev;
    private string $email;
    private string $szul_datum;
    private string $jelszo;
    private bool $szerzo_e;

    public function __construct(string $felhasznalonev, string $email, string $szul_datum, string $jelszo, bool $szerzo_e)
    {
        $this->felhasznalonev = $felhasznalonev;
        $this->email = $email;
        $this->szul_datum = $szul_datum;
        $this->jelszo = $jelszo;
        $this->szerzo_e=$szerzo_e;

    }

    /**
     * @return bool
     */
    public function isSzerzoE(): bool
    {
        return $this->szerzo_e;
    }

    /**
     * @param bool $szerzo_e
     */
    public function setSzerzoE(bool $szerzo_e): void
    {
        $this->szerzo_e = $szerzo_e;
    }

    /**
     * @return string
     */
    public function getEmail(): string
    {
        return $this->email;
    }

    /**
     * @param string $email
     */
    public function setEmail(string $email): void
    {
        $this->email = $email;
    }

    /**
     * @return string
     */
    public function getSzulDatum(): string
    {
        return $this->szul_datum;
    }

    /**
     * @param string $szul_datum
     */
    public function setSzulDatum(string $szul_datum): void
    {
        $this->szul_datum = $szul_datum;
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
    public function getJelszo(): string
    {
        return $this->jelszo;
    }

    /**
     * @param string $jelszo
     */
    public function setJelszo(string $jelszo): void
    {
        $this->jelszo = $jelszo;
    }
}
