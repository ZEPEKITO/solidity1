//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.7;

contract Exercice {

    enum etape {commande, expedie, livre}
    
    mapping (address => produit) commandeClient;
    
    struct produit {
        uint _SKU;
        Exercice.etape _etape;
    }

    function commander(address _client, uint _SKU) public {
        produit memory p = produit(_SKU, etape.commande);
        commandeClient[_client] = p;
    }

    function expedie(address _client) public {
        commandeClient[_client]._etape = etape.expedie;
    }

    function getSKU (address _client) public view returns(uint) {
        return commandeClient[_client]._SKU;
    }
   function getEtape(address _client) public view returns(etape) {
       return commandeClient[_client]._etape;
   }
}