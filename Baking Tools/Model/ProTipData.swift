//
//  ProTipData.swift
//  Baking Tools
//
//  Created by Zachary Foster on 2/12/18.
//  Copyright © 2018 Zachary Foster. All rights reserved.
//

import Foundation

final class ProTipData {
    
    static func generateProTipData() -> [ProTip] {
        return [
            ProTip(title: "Softening Butter",
                   description: "It is best to take the butter out of the fridge and let it sit for an hour before use. Alternatively, you can microwave for 10 seconds at a time. Be careful to avoid melting. You only want the butter softened for easy mixing, not cooked!"),
            
            ProTip(title: "Browning Butter",
                   description: "The goal is to cook the butter until you see the separated milk solids turn brown. Watch closely to make sure you don’t burn it.\n\nIn a medium sauce pan, melt the butter slowly over low heat.\n\nOnce the butter is liquified, turn the heat up to medium. You’ll notice the butter going through stages. It will start crackling and popping. After 5-7 minutes, a foam will form on top - watch closely because it’s almost done! With a spatula or spoon, gently stir the butter and watch for brown residue (the milk solids).\n\nOnce you start seeing brown, you will also notice a nutty smell - take the pan off the heat, stir for a few more seconds, and transfer to a heat-safe bowl."),
            
            ProTip(title: "Using Real or Artificial Vanilla",
                   description: "As a rule of thumb, if the vanilla is in something going into the oven, like a cake or pie, you can use artificial vanilla. Even professional bakers and taste-testers can't tell the difference. But if you are making something, like a buttercream frosting, that is being mixed together and then served, you must use the real thing."),
            
            ProTip(title: "How Do I Know When My Cake Is Done?",
                   description: "Carefully remove the cake from the oven. Test it by sticking a Toothpick into the center and pulling it out. If it comes out clean or with just a few crumbs stuck to the side, the cake is done. If there’s batter on the toothpick, cook longer. Try Baking/Testing in 2-5 minute increments until the cake is done."),
            
            ProTip(title: "How Do I Store a Cake or Cupcakes without Messing Up the Frosting?",
                   description: "Cover the cake with aluminum foil. You can avoid contact between the foil and the frosting by placing 6-8 toothpicks uniformly around the edges of the cake before covering. This will help keep the foil up and off of the frosting."),
            
            ProTip(title: "How Do I Store a Cake or Cupcakes without Messing Up the Frosting?",
                   description: "Cover the cake with aluminum foil. You can avoid contact between the foil and the frosting by placing 6-8 toothpicks uniformly around the edges of the cake before covering. This will help keep the foil up and off of the frosting."),
            
            ProTip(title: "Why is mixing cookie dough too much bad?",
                   description: "Mixing develops the flour’s proteins. These proteins are essential to providing structure to many baked goods. For example, kneading bread dough develops proteins so that a baked loaf has structure and rises properly. Usually, in cookie recipes, just mixing the ingredients together will provide enough protein development. Over-mixing can result in tough or overly-chewy cookies."),
            
            ProTip(title: "Why is chilling cookie dough beneficial?",
                   description: "Chilling the dough will result in a less flat and more flavorful cookie. While chilling, sugars have more time to absorb liquids in the dough and fats cool down. Less liquid and more slowly-melting fats result in less cookie spread during the bake. In addition, dough gradually dries out while chilling, concentrating flavors - think a watered-down cocktail vs a potent one."),
            
            ProTip(title: "Dry vs Fresh Herbs",
                   description: "Dry herbs are more potent. It's usually OK to substitute one type of herb for the other, but you have to adjust the amounts. Divide the measurement by three when substituting dry ingredients for fresh ingredients. For example, if a recipe calls for 1 Tablespoon (equal to 3 teaspoons) of fresh basil, substitute only 1 teaspoon of dry basil."),
        ]
    }
}
