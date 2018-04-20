cls

#Script essai de la fonction Switch

$feu = "rouge" ;

Switch($feu) {
    "vert" {
        "Je passe"
    }
    "orange" {
        "Je ralentis"
    }
    "rouge" {
        "je m'arrète"
    }
    default {
        "???"
    }
}