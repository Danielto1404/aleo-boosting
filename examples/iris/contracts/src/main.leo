program contracts.aleo { 
     struct Probas { class_0_proba: i32, class_1_proba: i32, class_2_proba: i32 }

    function class_0_tree_0 ( sepal_length_cm: i32, sepal_width_cm: i32, petal_length_cm: i32, petal_width_cm: i32 ) -> i32 { 
        if ( petal_length_cm < 8053i32 ) { 
            return 13978i32; 
        } else { 
            return -7168i32; 
        } 
    }

    function class_1_tree_0 ( sepal_length_cm: i32, sepal_width_cm: i32, petal_length_cm: i32, petal_width_cm: i32 ) -> i32 { 
        if ( petal_length_cm < 8053i32 ) { 
            return -6989i32; 
        } else { 
            if ( petal_width_cm < 22528i32 ) { 
                if ( petal_length_cm < 21937i32 ) { 
                    if ( sepal_length_cm < 6826i32 ) { 
                        return 4213i32; 
                    } else { 
                        return 13854i32; 
                    } 
                } else { 
                    if ( petal_width_cm < 19797i32 ) { 
                        return -4213i32; 
                    } else { 
                        return 4213i32; 
                    } 
                } 
            } else { 
                if ( petal_length_cm < 21382i32 ) { 
                    return 0i32; 
                } else { 
                    return -6888i32; 
                } 
            } 
        } 
    }

    function class_2_tree_0 ( sepal_length_cm: i32, sepal_width_cm: i32, petal_length_cm: i32, petal_width_cm: i32 ) -> i32 { 
        if ( petal_width_cm < 21162i32 ) { 
            if ( petal_length_cm < 21937i32 ) { 
                return -7166i32; 
            } else { 
                return 7118i32; 
            } 
        } else { 
            return 12773i32; 
        } 
    }

    function class_0_tree_1 ( sepal_length_cm: i32, sepal_width_cm: i32, petal_length_cm: i32, petal_width_cm: i32 ) -> i32 { 
        if ( petal_length_cm < 8053i32 ) { 
            return 9615i32; 
        } else { 
            return -6418i32; 
        } 
    }

    function class_1_tree_1 ( sepal_length_cm: i32, sepal_width_cm: i32, petal_length_cm: i32, petal_width_cm: i32 ) -> i32 { 
        if ( petal_length_cm < 8053i32 ) { 
            return -6218i32; 
        } else { 
            if ( petal_width_cm < 22528i32 ) { 
                if ( petal_length_cm < 21937i32 ) { 
                    return 9280i32; 
                } else { 
                    if ( petal_width_cm < 19797i32 ) { 
                        return -3919i32; 
                    } else { 
                        return 3964i32; 
                    } 
                } 
            } else { 
                if ( petal_length_cm < 21382i32 ) { 
                    return 369i32; 
                } else { 
                    return -6164i32; 
                } 
            } 
        } 
    }

    function class_2_tree_1 ( sepal_length_cm: i32, sepal_width_cm: i32, petal_length_cm: i32, petal_width_cm: i32 ) -> i32 { 
        if ( petal_length_cm < 20827i32 ) { 
            if ( petal_width_cm < 18432i32 ) { 
                return -6368i32; 
            } else { 
                if ( sepal_length_cm < 13653i32 ) { 
                    return 239i32; 
                } else { 
                    return -4600i32; 
                } 
            } 
        } else { 
            if ( petal_width_cm < 22528i32 ) { 
                if ( petal_length_cm < 21937i32 ) { 
                    return -3527i32; 
                } else { 
                    if ( petal_width_cm < 19797i32 ) { 
                        return 6879i32; 
                    } else { 
                        return -856i32; 
                    } 
                } 
            } else { 
                if ( petal_length_cm < 21382i32 ) { 
                    return 2569i32; 
                } else { 
                    return 9680i32; 
                } 
            } 
        } 
    }

    function class_0_tree_2 ( sepal_length_cm: i32, sepal_width_cm: i32, petal_length_cm: i32, petal_width_cm: i32 ) -> i32 { 
        if ( petal_length_cm < 8053i32 ) { 
            return 7703i32; 
        } else { 
            return -5909i32; 
        } 
    }

    function class_1_tree_2 ( sepal_length_cm: i32, sepal_width_cm: i32, petal_length_cm: i32, petal_width_cm: i32 ) -> i32 { 
        if ( petal_length_cm < 8053i32 ) { 
            return -5686i32; 
        } else { 
            if ( petal_width_cm < 22528i32 ) { 
                if ( petal_length_cm < 22493i32 ) { 
                    if ( sepal_length_cm < 6826i32 ) { 
                        return 2065i32; 
                    } else { 
                        if ( sepal_width_cm < 3413i32 ) { 
                            return 2238i32; 
                        } else { 
                            return 7829i32; 
                        } 
                    } 
                } else { 
                    return -1214i32; 
                } 
            } else { 
                if ( petal_length_cm < 21382i32 ) { 
                    return 309i32; 
                } else { 
                    return -5619i32; 
                } 
            } 
        } 
    }

    function class_2_tree_2 ( sepal_length_cm: i32, sepal_width_cm: i32, petal_length_cm: i32, petal_width_cm: i32 ) -> i32 { 
        if ( petal_length_cm < 20827i32 ) { 
            if ( petal_width_cm < 18432i32 ) { 
                return -5850i32; 
            } else { 
                if ( sepal_width_cm < 11605i32 ) { 
                    return 830i32; 
                } else { 
                    return -4191i32; 
                } 
            } 
        } else { 
            if ( petal_width_cm < 22528i32 ) { 
                if ( petal_length_cm < 21937i32 ) { 
                    return -3119i32; 
                } else { 
                    if ( petal_width_cm < 19797i32 ) { 
                        return 5718i32; 
                    } else { 
                        return -778i32; 
                    } 
                } 
            } else { 
                if ( petal_length_cm < 21382i32 ) { 
                    return 2101i32; 
                } else { 
                    return 7713i32; 
                } 
            } 
        } 
    }

    function class_0_tree_3 ( sepal_length_cm: i32, sepal_width_cm: i32, petal_length_cm: i32, petal_width_cm: i32 ) -> i32 { 
        if ( petal_length_cm < 8053i32 ) { 
            return 6639i32; 
        } else { 
            return -5550i32; 
        } 
    }

    function class_1_tree_3 ( sepal_length_cm: i32, sepal_width_cm: i32, petal_length_cm: i32, petal_width_cm: i32 ) -> i32 { 
        if ( petal_length_cm < 8053i32 ) { 
            return -5288i32; 
        } else { 
            if ( petal_width_cm < 22528i32 ) { 
                if ( petal_length_cm < 22493i32 ) { 
                    if ( sepal_length_cm < 6826i32 ) { 
                        return 1513i32; 
                    } else { 
                        if ( sepal_width_cm < 3413i32 ) { 
                            return 1909i32; 
                        } else { 
                            return 6750i32; 
                        } 
                    } 
                } else { 
                    return -1139i32; 
                } 
            } else { 
                if ( petal_length_cm < 21382i32 ) { 
                    return 278i32; 
                } else { 
                    return -5205i32; 
                } 
            } 
        } 
    }

    function class_2_tree_3 ( sepal_length_cm: i32, sepal_width_cm: i32, petal_length_cm: i32, petal_width_cm: i32 ) -> i32 { 
        if ( petal_length_cm < 20827i32 ) { 
            if ( petal_width_cm < 18432i32 ) { 
                return -5478i32; 
            } else { 
                if ( sepal_length_cm < 13653i32 ) { 
                    return 1009i32; 
                } else { 
                    return -3786i32; 
                } 
            } 
        } else { 
            if ( petal_length_cm < 22493i32 ) { 
                if ( sepal_length_cm < 20024i32 ) { 
                    return 3502i32; 
                } else { 
                    return -3542i32; 
                } 
            } else { 
                if ( sepal_length_cm < 15928i32 ) { 
                    return 2574i32; 
                } else { 
                    return 6850i32; 
                } 
            } 
        } 
    }

    function class_0_tree_4 ( sepal_length_cm: i32, sepal_width_cm: i32, petal_length_cm: i32, petal_width_cm: i32 ) -> i32 { 
        if ( petal_length_cm < 8053i32 ) { 
            return 5964i32; 
        } else { 
            return -5279i32; 
        } 
    }

    function class_1_tree_4 ( sepal_length_cm: i32, sepal_width_cm: i32, petal_length_cm: i32, petal_width_cm: i32 ) -> i32 { 
        if ( petal_length_cm < 8053i32 ) { 
            return -4967i32; 
        } else { 
            if ( petal_width_cm < 21162i32 ) { 
                if ( petal_length_cm < 21937i32 ) { 
                    return 6117i32; 
                } else { 
                    return -1547i32; 
                } 
            } else { 
                if ( petal_length_cm < 22493i32 ) { 
                    if ( sepal_width_cm < 12288i32 ) { 
                        return -4333i32; 
                    } else { 
                        return 3589i32; 
                    } 
                } else { 
                    return -4813i32; 
                } 
            } 
        } 
    }

    function class_2_tree_4 ( sepal_length_cm: i32, sepal_width_cm: i32, petal_length_cm: i32, petal_width_cm: i32 ) -> i32 { 
        if ( petal_length_cm < 20827i32 ) { 
            if ( petal_width_cm < 18432i32 ) { 
                return -5190i32; 
            } else { 
                if ( sepal_length_cm < 13653i32 ) { 
                    return 1154i32; 
                } else { 
                    return -3428i32; 
                } 
            } 
        } else { 
            if ( petal_width_cm < 22528i32 ) { 
                if ( petal_length_cm < 22493i32 ) { 
                    return -1410i32; 
                } else { 
                    return 2682i32; 
                } 
            } else { 
                if ( petal_length_cm < 21382i32 ) { 
                    return 1281i32; 
                } else { 
                    return 5953i32; 
                } 
            } 
        } 
    }

    function class_0_tree_5 ( sepal_length_cm: i32, sepal_width_cm: i32, petal_length_cm: i32, petal_width_cm: i32 ) -> i32 { 
        if ( petal_length_cm < 8053i32 ) { 
            return 5494i32; 
        } else { 
            return -5050i32; 
        } 
    }

    function class_1_tree_5 ( sepal_length_cm: i32, sepal_width_cm: i32, petal_length_cm: i32, petal_width_cm: i32 ) -> i32 { 
        if ( petal_length_cm < 8053i32 ) { 
            return -4687i32; 
        } else { 
            if ( petal_width_cm < 21162i32 ) { 
                if ( petal_length_cm < 21937i32 ) { 
                    return 5619i32; 
                } else { 
                    return -1370i32; 
                } 
            } else { 
                if ( petal_length_cm < 22493i32 ) { 
                    if ( sepal_width_cm < 12288i32 ) { 
                        return -4044i32; 
                    } else { 
                        return 3175i32; 
                    } 
                } else { 
                    return -4506i32; 
                } 
            } 
        } 
    }

    function class_2_tree_5 ( sepal_length_cm: i32, sepal_width_cm: i32, petal_length_cm: i32, petal_width_cm: i32 ) -> i32 { 
        if ( petal_length_cm < 20827i32 ) { 
            if ( petal_width_cm < 18432i32 ) { 
                return -4941i32; 
            } else { 
                if ( sepal_length_cm < 13653i32 ) { 
                    return 1112i32; 
                } else { 
                    return -3066i32; 
                } 
            } 
        } else { 
            if ( petal_width_cm < 22528i32 ) { 
                if ( petal_length_cm < 22493i32 ) { 
                    return -1164i32; 
                } else { 
                    return 2188i32; 
                } 
            } else { 
                if ( sepal_length_cm < 15018i32 ) { 
                    return 1384i32; 
                } else { 
                    return 5640i32; 
                } 
            } 
        } 
    }

    transition main ( sepal_length_cm: i32, sepal_width_cm: i32, petal_length_cm: i32, petal_width_cm: i32 ) -> Probas { 
        let class_0_pred_0: i32 = class_0_tree_0(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_1_pred_0: i32 = class_1_tree_0(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_2_pred_0: i32 = class_2_tree_0(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_0_pred_1: i32 = class_0_tree_1(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_1_pred_1: i32 = class_1_tree_1(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_2_pred_1: i32 = class_2_tree_1(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_0_pred_2: i32 = class_0_tree_2(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_1_pred_2: i32 = class_1_tree_2(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_2_pred_2: i32 = class_2_tree_2(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_0_pred_3: i32 = class_0_tree_3(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_1_pred_3: i32 = class_1_tree_3(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_2_pred_3: i32 = class_2_tree_3(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_0_pred_4: i32 = class_0_tree_4(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_1_pred_4: i32 = class_1_tree_4(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_2_pred_4: i32 = class_2_tree_4(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_0_pred_5: i32 = class_0_tree_5(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_1_pred_5: i32 = class_1_tree_5(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_2_pred_5: i32 = class_2_tree_5(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_0_proba: i32 = class_0_pred_0 + class_0_pred_1 + class_0_pred_2 + class_0_pred_3 + class_0_pred_4 + class_0_pred_5;
        let class_1_proba: i32 = class_1_pred_0 + class_1_pred_1 + class_1_pred_2 + class_1_pred_3 + class_1_pred_4 + class_1_pred_5;
        let class_2_proba: i32 = class_2_pred_0 + class_2_pred_1 + class_2_pred_2 + class_2_pred_3 + class_2_pred_4 + class_2_pred_5;
        return Probas { class_0_proba: class_0_proba, class_1_proba: class_1_proba, class_2_proba: class_2_proba }; 
    } 
 }