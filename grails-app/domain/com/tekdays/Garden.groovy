package com.tekdays

class Garden {

    public enum TypeOfPlantStructure {
        TREE,
        BUSH,
        PLANT
    }
    public enum STORAGE {
        FREEZE,
        CAN,
        FRESH
    }
    public enum LIGHT_REQUIREMENT {
        FULL_LIGHT,
        PARTIAL_LIGHT,
        SHADE
    }
    String name
    String variety
    Date datePlanted
    String companyBoughtFrom
    TypeOfPlantStructure typeOfPlantStructure
    STORAGE winterStorage
    String healthBenefits
    LIGHT_REQUIREMENT lightRequirement
    String urlInfo1


    static constraints = {
        name(nullable:false)
        variety(nullable:true)
        datePlanted(nullable:true)
        companyBoughtFrom(nullable:true)
        typeOfPlantStructure(nullable:true)
        winterStorage(nullable:true)
        healthBenefits(nullable:true)
        lightRequirement(nullable:true)
        urlInfo1(nullable:true)
    }
}
