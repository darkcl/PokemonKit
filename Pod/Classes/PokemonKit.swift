//
//  PokemonKit.swift
//  Pods
//
//  Created by Yeung Yiu Hung on 28/2/2016.
//
//

import Foundation
import Alamofire
import ObjectMapper
import AlamofireObjectMapper

import PromiseKit

// MARK: Constant

let baseURL: String = "http://pokeapi.co/api/v2"

// MARK: Classes

/*
effect	The localized effect text for an API resource in a specific language	string
language	The language this effect is in	NamedAPIResource (Language)
*/
public class PKMEffect: Mappable {
    public var effect: String?
    public var language: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        effect <- map["effect"]
        language <- map["language"]
    }
}


/*
id	The identifier for this fling effect resource	integer
name	The name for this fling effect resource	string
effect_entries	The result of this fling effect listed in different languages	list Effect
items	A list of items that have this fling effect	list NamedAPIResource (Item)
*/
public class PKMItemFlingEffect: Mappable {
    public var id: Int?
    public var name: String?
    public var effectEntries: [PKMEffect]?
    public var items: [PKMNamedAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        effectEntries <- map["effect_entries"]
        items <- map["items"]
    }
}


/*
id	The identifier for this item category resource	integer
name	The name for this item category resource	string
items	A list of items that are a part of this category	list Item
names	The name of this item category listed in different languages	list Name
pocket	The pocket items in this category would be put in	NamedAPIResource (ItemPocket)
*/
public class PKMItemCategory: Mappable {
    public var id: Int?
    public var name: String?
    public var items: [PKMNamedAPIResource]?
    public var names: [PKMName]?
    public var pocket: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        items <- map["items"]
        names <- map["names"]
        pocket <- map["pocket"]
    }
}


/*
id	The identifier for this item attribute resource	integer
name	The name for this item attribute resource	string
items	A list of items that have this attribute	list NamedAPIResource (Item)
names	The name of this item attribute listed in different languages	list Name
descriptions	The description of this item attribute listed in different languages	list Description
*/
public class PKMItemAttribute: Mappable {
    public var id: Int?
    public var name: String?
    public var items: [PKMNamedAPIResource]?
    public var names: [PKMName]?
    public var descriptions: [PKMDescription]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        items <- map["items"]
        names <- map["names"]
        descriptions <- map["descriptions"]
    }
}


/*
effect	The localized effect text for an API resource in a specific language	string
short_effect	The localized effect text in brief	string
language	The language this effect is in	NamedAPIResource (Language)
*/
public class PKMVerboseEffect: Mappable {
    public var effect: String?
    public var shortEffect: String?
    public var language: Bool?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        effect <- map["effect"]
        shortEffect <- map["short_effect"]
        language <- map["language"]
    }
}


/*
text	The localized name for an API resource in a specific language	string
language	The language this name is in	NamedAPIResource (Language)
version_group	The version group which uses this flavor text	NamedAPIResource (VersionGroup)
*/
public class PKMVersionGroupFlavorText: Mappable {
    public var text: String?
    public var language: PKMNamedAPIResource?
    public var versionGroup: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        text <- map["text"]
        language <- map["language"]
        versionGroup <- map["version_group"]
    }
}


/*
game_index	The internal id of an API resource within game data	integer
generation	The generation relevent to this game index	NamedAPIResource (Generation)
*/
public class PKMGenerationGameIndex: Mappable {
    public var gameIndex: Int?
    public var generation: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        gameIndex <- map["game_index"]
        generation <- map["generation"]
    }
}


public class PKMItemSprites: Mappable {
    /// The default depiction of this item
    public var defaultDepiction: String?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        defaultDepiction <- map["default"]
    }
}


/// API Referenced Resource
public class PKMAPIResource: Mappable {
    /// The URL of the referenced resource
    public var url: String?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        url <- map["url"]
    }
}


/*
id	The identifier for this item resource	integer
name	The name for this item resource	string
cost	The price of this item in stores	integer
fling_power	The power of the move Fling when used with this item.	integer
fling_effect	The effect of the move Fling when used with this item	ItemFlingEffect
attributes	A list of attributes this item has	list NamedAPIResource (ItemAttribute)
category	The category of items this item falls into	ItemCategory
effect_entries	The effect of this ability listed in different languages	list VerboseEffect
flavor_text_entries	The flavor text of this ability listed in different languages	list VersionGroupFlavorText
game_indices	A list of game indices relevent to this item by generation	list GenerationGameIndex
names	The name of this item listed in different languages	list Name
sprites	A set of sprites used to depict this item in the game	ItemSprites
held_by_pokemon	A list of Pokémon that might be found in the wild holding this item	list NamedAPIResource (Pokemon)
baby_trigger_for	An evolution chain this item requires to produce a bay during mating	list APIResource (EvolutionChain)
*/
public class PKMItem: Mappable {
    public var id: Int?
    public var name: String?
    public var cost: Int?
    public var fling_power: Int?
    public var fling_effect: PKMNamedAPIResource?
    public var attributes: [PKMNamedAPIResource]?
    public var category: PKMNamedAPIResource?
    public var effect_entries: [PKMVerboseEffect]?
    public var flavor_text_entries: [PKMVersionGroupFlavorText]?
    public var game_indices: [PKMGenerationGameIndex]?
    public var names: [PKMName]?
    public var sprites: PKMItemSprites?
    public var held_by_pokemon: [PKMNamedAPIResource]?
    public var baby_trigger_for: [PKMAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        cost <- map["cost"]
        fling_power <- map["fling_power"]
        fling_effect <- map["fling_effect"]
        attributes <- map["attributes"]
        category <- map["category"]
        effect_entries <- map["effect_entries"]
        flavor_text_entries <- map["flavor_text_entries"]
        game_indices <- map["game_indices"]
        names <- map["names"]
        sprites <- map["sprites"]
        held_by_pokemon <- map["held_by_pokemon"]
        baby_trigger_for <- map["baby_trigger_for"]
    }
}


/*
id	The identifier for this version group resource	integer
name	The name for this version group resource	string
order	Order for sorting. Almost by date of release, except similar versions are grouped together.	integer
generation	The generation this version was introduced in	list NamedAPIResource (Generation)
move_learn_methods	A list of methods in which Pokémon can learn moves in this version group	list NamedAPIResource (MoveLearnMethod)
names	The name of this version group listed in different languages	list Name
pokedexes	A list of Pokédexes introduces in this version group	list NamedAPIResource (Pokedex)
regions	A list of regions that can be visited in this version group	list NamedAPIResource (Region)
versions	The versions this version group owns	list NamedAPIResource (Version)
*/
public class PKMVersionGroup: Mappable {
    public var id: Int?
    public var name: String?
    public var order: Int?
    public var generation: [PKMNamedAPIResource]?
    public var moveLearnMethods: [PKMNamedAPIResource]?
    public var names: [PKMName]?
    public var pokedexes: [PKMNamedAPIResource]?
    public var regions: [PKMNamedAPIResource]?
    public var versions: [PKMNamedAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        order <- map["order"]
        generation <- map["generation"]
        moveLearnMethods <- map["move_learn_methods"]
        names <- map["names"]
        pokedexes <- map["pokedexes"]
        regions <- map["regions"]
        versions <- map["versions"]
    }
}

/*
id	The identifier for this version resource	integer
name	The name for this version resource	string
names	The name of this version listed in different languages	list Name
version_group	The version group this version belongs to	NamedAPIResource (VersionGroup)
*/
public class PKMVersion: Mappable {
    public var id: Int?
    public var name: String?
    public var names: [PKMName]?
    public var versionGroup: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        names <- map["names"]
        versionGroup <- map["version_group"]
    }
}


/*
description	The localized description for an API resource in a specific language	string
language	The language this name is in	NamedAPIResource (Language)
*/
public class PKMDescription: Mappable {
    public var description: String?
    public var language: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        description <- map["description"]
        language <- map["language"]
    }
}

/*
entry_number	The index of this pokemon species entry within the Pokédex	integer
pokemon_species	The Pokémon species being encountered	NamedAPIResource (PokemonSpecies)
*/
public class PKMEntry: Mappable {
    public var entryNumber: Int?
    public var pokemonSpecies: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        entryNumber <- map["entry_number"]
        pokemonSpecies <- map["pokemon_species"]
    }
}

/*
id	The identifier for this Pokédex resource	integer
name	The name for this Pokédex resource	string
is_main_series	Whether or not this Pokédex originated in the main series of the video games	boolean
descriptions	The description of this Pokédex listed in different languages	list Description
names	The name of this Pokédex listed in different languages	list Name
pokemon_entries	A list of pokemon catalogued in this Pokédex and their indexes	list PokemonEntry
region	The region this Pokédex catalogues pokemon for	NamedAPIResource (Region)
version_groups	A list of version groups this Pokédex is relevent to	NamedAPIResource (VersionGroup)
*/
public class PKMPokedex: Mappable {
    public var id: Int?
    public var name: String?
    public var isMainSeries: Bool?
    public var descriptions: [PKMDescription]?
    public var names: [PKMName]?
    public var pokemonEntries: [PKMEntry]?
    public var region: PKMNamedAPIResource?
    public var versionGroups: [PKMNamedAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        isMainSeries <- map["is_main_series"]
        descriptions <- map["descriptions"]
        names <- map["names"]
        pokemonEntries <- map["pokemon_entries"]
        region <- map["region"]
        versionGroups <- map["version_groups"]
    }
}


public class PKMGeneration: Mappable {
    public var id: Int?
    public var name: String?
    public var names: [PKMName]?
    public var abilities: [PKMNamedAPIResource]?
    public var mainRegion: PKMNamedAPIResource?
    public var moves: [PKMNamedAPIResource]?
    public var pokemonSpecies: [PKMNamedAPIResource]?
    public var types: [PKMNamedAPIResource]?
    public var versionGroups: [PKMNamedAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        names <- map["names"]
        abilities <- map["abilities"]
        mainRegion <- map["id"]
        moves <- map["moves"]
        pokemonSpecies <- map["pokemon_species"]
        types <- map["types"]
        versionGroups <- map["versionGroups"]
    }
}


public class PKMEvolutionTrigger: Mappable {
    public var id: Int?
    public var name: String?
    public var names: [PKMName]?
    public var pokemonSpecies: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        names <- map["names"]
        pokemonSpecies <- map["pokemon_species"]
    }
}


public class PKMEvolutionDetail: Mappable {
    public var item: PKMNamedAPIResource?
    public var trigger: PKMNamedAPIResource?
    public var gender: PKMNamedAPIResource?
    public var heldItem: PKMNamedAPIResource?
    public var knownMove: PKMNamedAPIResource?
    public var knownMoveType: PKMNamedAPIResource?
    public var location: PKMNamedAPIResource?
    public var minLevel: Int?
    public var minHappiness: Int?
    public var minBeauty: Int?
    public var minAffection: Int?
    public var needsOverworldRain: Bool?
    public var partySpecies: PKMNamedAPIResource?
    public var partyType: PKMNamedAPIResource?
    public var relativePhysicalStats: Int?
    public var timeOfDay: String?
    public var tradeSpecies: PKMNamedAPIResource?
    public var turnUpsideDown: Bool?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        item <- map["item"];
        trigger <- map["trigger"];
        gender <- map["gender"];
        heldItem <- map["held_item"];
        knownMove <- map["known_move"];
        knownMoveType <- map["known_move_type"];
        location <- map["location"];
        minLevel <- map["min_level"];
        minHappiness <- map["min_happiness"];
        minBeauty <- map["min_beauty"];
        minAffection <- map["min_affection"];
        needsOverworldRain <- map["needs_overworld_rain"];
        partySpecies <- map["party_species"];
        partyType <- map["party_type"];
        relativePhysicalStats <- map["relative_physical_stats"];
        timeOfDay <- map["time_of_day"];
        tradeSpecies <- map["trade_species"];
        turnUpsideDown <- map["turn_upside_down"];
    }
}

/*
is_baby	Whether or not this link is for a baby Pokémon. This would only ever be true on the base link.	boolean
species	The Pokémon species at this point in the evolution chain	NamedAPIResource (PokemonSpecies)
evolution_details	All details regarding the specific details of the referenced Pokémon species evolution	EvolutionDetail
evolves_to	A List of chain objects.	list ChainLink
*/
public class PKMClainLink: Mappable {
    public var isBaby: Bool?
    public var species: PKMNamedAPIResource?
    public var evolutionDetails: PKMEvolutionDetail?
    public var evolvesTo: [PKMClainLink]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        isBaby <- map["is_baby"]
        species <- map["species"]
        evolutionDetails <- map["evolution_details"]
        evolvesTo <- map["evolves_to"]
    }
}

/*
id	The identifier for this evolution chain resource	integer
baby_trigger_item	The item that a Pokémon would be holding when mating that would trigger the egg hatching a baby Pokémon rather than a basic Pokémon	NamedAPIResource (Item)
chain	The base chain link object. Each link contains evolution details for a Pokémon in the chain. Each link references the next Pokémon in the natural evolution order.	ChainLink

*/
public class PKMEvolutionChain: Mappable {
    public var id: Int?
    public var babyTriggerItem: PKMNamedAPIResource?
    public var chain: PKMClainLink?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        babyTriggerItem <- map["baby_trigger_item"]
        chain <- map["chain"]
    }
}

public class PKMEncounterConditionValue: Mappable {
    
    /// The identifier for this encounter condition value resource
    public var id: Int?
    
    /// The name for this encounter condition value resource
    public var name: String?
    
    /// The condition this encounter condition value pertains to
    public var condition: [PKMNamedAPIResource]?
    
    /// The name of this encounter condition value listed in different languages
    public var names: [PKMName]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["flavor_text"]
        name <- map["name"]
        condition <- map["condition"]
        names <- map["names"]
    }
}

public class PKMEncounterCondition: Mappable {
    public var id: Int?
    public var name: String?
    public var values: [PKMNamedAPIResource]?
    public var names: [PKMName]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["flavor_text"]
        name <- map["name"]
        values <- map["values"]
        names <- map["names"]
    }
}

public class PKMEncounterMethod: Mappable {
    public var id: Int?
    public var name: String?
    public var order: Int?
    public var names: [PKMName]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["flavor_text"]
        name <- map["name"]
        order <- map["order"]
        names <- map["names"]
    }
}

public class PKMSuperContestEffect: Mappable {
    public var id: Int?
    public var appeal: String?
    public var flavorTextEntries: [PKMFlavorText]?
    public var moves: [PKMNamedAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["flavor_text"]
        appeal <- map["appeal"]
        flavorTextEntries <- map["flavor_text_entries"]
        moves <- map["moves"]
    }
}

public class PKMFlavorText: Mappable {
    public var flavorText: String?
    public var language: PKMName?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        flavorText <- map["flavor_text"]
        language <- map["language"]
    }
}

public class PKMEffectEntry: Mappable {
    public var effect: String?
    public var language: PKMName?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        effect <- map["effect"]
        language <- map["language"]
    }
}

public class PKMContestEffect: Mappable {
    public var id: Int?
    public var appeal: String?
    public var jam: Int?
    public var effectEntries: [PKMEffectEntry]?
    public var flavorTextEntries: [PKMFlavorText]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        appeal <- map["appeal"]
        jam <- map["jam"]
        effectEntries <- map["effect_entries"]
        flavorTextEntries <- map["flavor_text_entries"]
    }
}

public class PKMContestType: Mappable {
    public var id: Int?
    public var name: String?
    public var berryFlavor: PKMNamedAPIResource?
    public var names: [PKMName]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        berryFlavor <- map["berry_flavor"]
        names <- map["results"]
    }
}

public class PKMPagedObject: Mappable{
    public var count: Int?
    public var next: String?
    public var previous: String?
    public var results: [PKMNamedAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        count <- map["count"]
        next <- map["next"]
        previous <- map["previous"]
        results <- map["results"]
    }
}

public class PKMName: Mappable{
    public var name: String?
    public var language: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        name <- map["name"]
        language <- map["language"]
    }
}

public class PKMNamedAPIResource: Mappable{
    public var name: String?
    public var url: String?
    
    required public init?(_ map: Map){
        
    }
    
    public func mapping(map: Map) {
        name <- map["name"]
        url <- map["url"]
    }
}

public class PKMBerryFlavourMap: Mappable{
    public var potency: Int?
    public var flavor: PKMNamedAPIResource?
    
    required public init?(_ map: Map){
        
    }
    
    public func mapping(map: Map) {
        potency <- map["potency"]
        flavor <- map["flavor"]
    }
}

public class PKMBerryFlavour: Mappable{
    public var id: Int?
    public var name: String?
    public var berries: [PKMFlavourBerryMap]?
    public var contestType: PKMNamedAPIResource?
    public var names:[PKMName]?
    
    required public init?(_ map: Map){
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        berries <- map["berries"]
        contestType <- map["contest_type"]
        names <- map["names"]
    }
}

public class PKMFlavourBerryMap: Mappable {
    public var potency: Int?
    public var berry: PKMNamedAPIResource?
    
    required public init?(_ map: Map){
        
    }
    
    public func mapping(map: Map) {
        potency <- map["potency"]
        berry <- map["berry"]
    }
}

public class PKMBerry: Mappable{
    public var id: Int?
    public var name: String?
    public var growthTime: Int?
    public var maxHarvest: Int?
    public var naturalGiftPower: Int?
    public var size: Int?
    public var smoothness: Int?
    public var soilDryness: Int?
    public var firmness: PKMNamedAPIResource?
    public var flavors: [PKMBerryFlavourMap]?
    public var item: PKMNamedAPIResource?
    public var naturalGiftType: PKMNamedAPIResource?
    
    required public init?(_ map: Map){
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        growthTime <- map["growth_time"]
        maxHarvest <- map["max_harvest"]
        naturalGiftPower <- map["natural_gift_power"]
        size <- map["size"]
        smoothness <- map["smoothness"]
        soilDryness <- map["soil_dryness"]
        firmness <- map["firmness"]
        flavors <- map["flavors"]
        item <- map["item"]
        naturalGiftType <- map["natural_gift_type"]
    }
}

public class PKMBerryName: Mappable {
    var language: PKMNamedAPIResource?
    var name: String?
    
    required public init?(_ map: Map){
        
    }
    
    public func mapping(map: Map) {
        language <- map["language"]
        name <- map["name"]
    }
}

public class PKMBerryFirmness: Mappable {
    public var id: Int?
    public var berries: [PKMNamedAPIResource]?
    public var names: [PKMBerryName]?
    public var name: String?
    
    
    required public init?(_ map: Map){
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        berries <- map["berries"]
        names <- map["names"]
        name <- map["name"]
    }
}

// MARK: -
// MARK: Functions

public func fetchBerryList() -> Promise<PKMPagedObject>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/berry"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    };
}

public func fetchBerry(berryId: String) -> Promise<PKMBerry>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/berry/" + berryId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMBerry, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchBerryFirmnessList() -> Promise<PKMPagedObject>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/berry-firmness"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchBerryFirmness(berryFirmnessId: String) -> Promise<PKMBerryFirmness>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/berry-firmness/" + berryFirmnessId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMBerryFirmness, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}


public func fetchBerryFlavours() -> Promise<PKMPagedObject>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/berry-flavor"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchBerryFlavour(berryFlavourId: String) -> Promise<PKMBerryFlavour>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/berry-flavor/" + berryFlavourId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMBerryFlavour, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchContestList() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/contest-type"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchContestType(contestTypeId: String) -> Promise<PKMContestType>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/contest-type/" + contestTypeId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMContestType, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchContestEffects() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/contest-effect"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchContestEffect(contestEffectId: String) -> Promise<PKMContestEffect>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/contest-effect/" + contestEffectId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMContestEffect, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchSuperContestEffects() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/contest-effect"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchSuperContestEffect(superContestEffectId: String) -> Promise<PKMSuperContestEffect>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/super-contest-effect/" + superContestEffectId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMSuperContestEffect, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchEncounterMethods() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/encounter-method"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchEncounterMethod(encounterMethodId: String) -> Promise<PKMEncounterMethod>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/encounter-method/" + encounterMethodId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMEncounterMethod, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchEncounterConditions() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/encounter-condition"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchEncounterCondition(encounterConditionId: String) -> Promise<PKMEncounterMethod>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/encounter-condition/" + encounterConditionId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMEncounterMethod, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchEncounterConditionValues() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/encounter-condition-value"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchEncounterConditionValue(encounterConditionValueId: String) -> Promise<PKMEncounterConditionValue>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/encounter-condition-value/" + encounterConditionValueId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMEncounterConditionValue, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchEvolutionChains() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/evolution-chain"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchEvolutionChain(evolutionChainId: String) -> Promise<PKMEvolutionChain>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/evolution-chain/" + evolutionChainId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMEvolutionChain, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchEvolutionTriggers() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/evolution-trigger"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchEvolutionTrigger(evolutionTriggerId: String) -> Promise<PKMEvolutionTrigger>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/evolution-trigger/" + evolutionTriggerId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMEvolutionTrigger, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchGenerations() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/generation"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchGeneration(generationId: String) -> Promise<PKMGeneration>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/generation/" + generationId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMGeneration, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchPokedexes() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/pokedex"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchPokedex(pokedexId: String) -> Promise<PKMPokedex>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/pokedex/" + pokedexId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPokedex, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchVersions() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/version"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchVersion(versionId: String) -> Promise<PKMVersion>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/version/" + versionId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMVersion, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchVersionGroups() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/version-group"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchVersionGroup(versionGroupId: String) -> Promise<PKMVersionGroup>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/version-group/" + versionGroupId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMVersionGroup, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchItems() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/item"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchItem(itemId: String) -> Promise<PKMItem>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/item/" + itemId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMItem, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchItemAttributes() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/item-attribute"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchItemAttribute(itemAttributeId: String) -> Promise<PKMItemAttribute>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/item-attribute/" + itemAttributeId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMItemAttribute, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchItemCategories() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/item-category"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchItemCategory(itemCategoryId: String) -> Promise<PKMItemCategory>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/item-category/" + itemCategoryId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMItemCategory, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchItemFlingEffects() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/item-fling-effect"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchItemFlingEffect(itemFlingEffectsId: String) -> Promise<PKMItemFlingEffect>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/item-fling-effect/" + itemFlingEffectsId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMItemFlingEffect, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}