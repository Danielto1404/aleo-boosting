program iris.aleo { 
     struct Probas { class_0_proba: i128, class_1_proba: i128, class_2_proba: i128 }

    function class_0_tree_0 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return 3912589863452533760i128; 
        } else { 
            return -2020486755692502528i128; 
        } 
    }

    function class_1_tree_0 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return -1956295203815741952i128; 
        } else { 
            if ( petal_width_cm < 6341068275337658368i128 ) { 
                if ( petal_length_cm < 6174969447489747968i128 ) { 
                    return 3773197899633146880i128; 
                } else { 
                    return 664082758061090560i128; 
                } 
            } else { 
                if ( petal_length_cm < 6174969447489747968i128 ) { 
                    return -332041481871143488i128; 
                } else { 
                    return -1953184962861078016i128; 
                } 
            } 
        } 
    }

    function class_2_tree_0 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_width_cm < 5956761472995800064i128 ) { 
            if ( petal_length_cm < 6174969447489747968i128 ) { 
                return -2014814511017045504i128; 
            } else { 
                return 1185862049190082816i128; 
            } 
        } else { 
            if ( petal_length_cm < 6331298012679249920i128 ) { 
                if ( sepal_width_cm < 3458764513820540928i128 ) { 
                    return 2656331303411500032i128; 
                } else { 
                    return -70682894339i128; 
                } 
            } else { 
                return 3899815188810212352i128; 
            } 
        } 
    }

    function class_0_tree_1 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return 2697388996459606528i128; 
        } else { 
            return -1808808365974953472i128; 
        } 
    }

    function class_1_tree_1 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return -1740361565292129536i128; 
        } else { 
            if ( petal_width_cm < 6341068275337658368i128 ) { 
                if ( petal_length_cm < 6174969447489747968i128 ) { 
                    if ( sepal_length_cm < 1921535930170674688i128 ) { 
                        return 1053296607386449536i128; 
                    } else { 
                        return 2705602067993660416i128; 
                    } 
                } else { 
                    return 542187531917954432i128; 
                } 
            } else { 
                if ( petal_length_cm < 6174969447489747968i128 ) { 
                    return -319224372338755264i128; 
                } else { 
                    return -1739211752063899136i128; 
                } 
            } 
        } 
    }

    function class_2_tree_1 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_width_cm < 5956761472995800064i128 ) { 
            if ( petal_length_cm < 6174969447489747968i128 ) { 
                return -1799460589096065536i128; 
            } else { 
                return 997381565396612096i128; 
            } 
        } else { 
            return 2567524305562316800i128; 
        } 
    }

    function class_0_tree_2 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return 2160609754756158464i128; 
        } else { 
            return -1666194558399256832i128; 
        } 
    }

    function class_1_tree_2 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return -1590371135345657344i128; 
        } else { 
            if ( petal_width_cm < 6341068275337658368i128 ) { 
                if ( petal_length_cm < 6174969447489747968i128 ) { 
                    if ( sepal_length_cm < 1921535930170674688i128 ) { 
                        return 847244627719357696i128; 
                    } else { 
                        return 2160167475620247296i128; 
                    } 
                } else { 
                    return 502256189684291072i128; 
                } 
            } else { 
                if ( petal_length_cm < 6174969447489747968i128 ) { 
                    return -202316839577198592i128; 
                } else { 
                    return -1593039788917312768i128; 
                } 
            } 
        } 
    }

    function class_2_tree_2 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_width_cm < 5956761472995800064i128 ) { 
            if ( petal_length_cm < 6174969447489747968i128 ) { 
                return -1655182949768524544i128; 
            } else { 
                return 857383018214186624i128; 
            } 
        } else { 
            if ( petal_length_cm < 6331298012679249920i128 ) { 
                if ( sepal_width_cm < 3458764513820540928i128 ) { 
                    return 1812943351233028096i128; 
                } else { 
                    return -368488918523488256i128; 
                } 
            } else { 
                return 2167124775828111360i128; 
            } 
        } 
    }

    function class_0_tree_3 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return 1860851270363022592i128; 
        } else { 
            return -1565403568698983936i128; 
        } 
    }

    function class_1_tree_3 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return -1477103985439036160i128; 
        } else { 
            if ( petal_width_cm < 6341068275337658368i128 ) { 
                if ( petal_length_cm < 6174969447489747968i128 ) { 
                    if ( sepal_length_cm < 1921535930170674688i128 ) { 
                        return 684431419556043392i128; 
                    } else { 
                        return 1856231679914759680i128; 
                    } 
                } else { 
                    return 433712222621733312i128; 
                } 
            } else { 
                if ( petal_length_cm < 6174969447489747968i128 ) { 
                    return -180781203888078848i128; 
                } else { 
                    return -1478820325847886336i128; 
                } 
            } 
        } 
    }

    function class_2_tree_3 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_width_cm < 5956761472995800064i128 ) { 
            if ( petal_length_cm < 6174969447489747968i128 ) { 
                return -1551077476763203840i128; 
            } else { 
                return 751650062766218624i128; 
            } 
        } else { 
            if ( petal_length_cm < 6331298012679249920i128 ) { 
                if ( sepal_width_cm < 3458764513820540928i128 ) { 
                    return 1597108808618579968i128; 
                } else { 
                    return -388974984281022912i128; 
                } 
            } else { 
                return 1862653369685071616i128; 
            } 
        } 
    }

    function class_0_tree_4 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return 1670107444858683904i128; 
        } else { 
            return -1488893502490728704i128; 
        } 
    }

    function class_1_tree_4 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return -1384878326297648640i128; 
        } else { 
            if ( petal_width_cm < 6341068275337658368i128 ) { 
                if ( sepal_width_cm < 960767969697023360i128 ) { 
                    return 194120873708924320i128; 
                } else { 
                    if ( sepal_length_cm < 1921535930170674688i128 ) { 
                        return 282384032028024096i128; 
                    } else { 
                        return 1645220555047216896i128; 
                    } 
                } 
            } else { 
                if ( sepal_length_cm < 4355481117672391680i128 ) { 
                    return -178536172415378528i128; 
                } else { 
                    return -1418736826982852608i128; 
                } 
            } 
        } 
    }

    function class_2_tree_4 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_width_cm < 5956761472995800064i128 ) { 
            if ( petal_length_cm < 6174969447489747968i128 ) { 
                return -1471044580498960128i128; 
            } else { 
                return 667076041124303872i128; 
            } 
        } else { 
            if ( petal_length_cm < 6331298012679249920i128 ) { 
                if ( sepal_width_cm < 3458764513820540928i128 ) { 
                    return 1438551950531949824i128; 
                } else { 
                    return -399363307866632192i128; 
                } 
            } else { 
                return 1668980856081242368i128; 
            } 
        } 
    }

    function class_0_tree_5 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return 1536315303797520896i128; 
        } else { 
            return -1427561371189461760i128; 
        } 
    }

    function class_1_tree_5 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return -1304092812098569728i128; 
        } else { 
            if ( petal_width_cm < 6341068275337658368i128 ) { 
                if ( petal_length_cm < 6174969447489747968i128 ) { 
                    if ( sepal_length_cm < 1921535930170674688i128 ) { 
                        return 475117356405119232i128; 
                    } else { 
                        return 1529131911070917632i128; 
                    } 
                } else { 
                    return 246812528872310208i128; 
                } 
            } else { 
                if ( sepal_length_cm < 4355481117672391680i128 ) { 
                    return -98356280503971904i128; 
                } else { 
                    return -1341856774428711168i128; 
                } 
            } 
        } 
    }

    function class_2_tree_5 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 6018640891523617792i128 ) { 
            if ( petal_width_cm < 5956761472995800064i128 ) { 
                return -1403582669928975616i128; 
            } else { 
                return 292777990171610688i128; 
            } 
        } else { 
            if ( petal_width_cm < 6341068275337658368i128 ) { 
                if ( sepal_width_cm < 2882303761517117440i128 ) { 
                    return -49569780954039312i128; 
                } else { 
                    return 93880167908777040i128; 
                } 
            } else { 
                return 1606025844799974656i128; 
            } 
        } 
    }

    transition main ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> Probas { 
        let class_0_pred_0: i128 = class_0_tree_0(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_1_pred_0: i128 = class_1_tree_0(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_2_pred_0: i128 = class_2_tree_0(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_0_pred_1: i128 = class_0_tree_1(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_1_pred_1: i128 = class_1_tree_1(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_2_pred_1: i128 = class_2_tree_1(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_0_pred_2: i128 = class_0_tree_2(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_1_pred_2: i128 = class_1_tree_2(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_2_pred_2: i128 = class_2_tree_2(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_0_pred_3: i128 = class_0_tree_3(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_1_pred_3: i128 = class_1_tree_3(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_2_pred_3: i128 = class_2_tree_3(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_0_pred_4: i128 = class_0_tree_4(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_1_pred_4: i128 = class_1_tree_4(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_2_pred_4: i128 = class_2_tree_4(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_0_pred_5: i128 = class_0_tree_5(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_1_pred_5: i128 = class_1_tree_5(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_2_pred_5: i128 = class_2_tree_5(sepal_length_cm, sepal_width_cm, petal_length_cm, petal_width_cm);
        let class_0_proba: i128 = class_0_pred_0 + class_0_pred_1 + class_0_pred_2 + class_0_pred_3 + class_0_pred_4 + class_0_pred_5;
        let class_1_proba: i128 = class_1_pred_0 + class_1_pred_1 + class_1_pred_2 + class_1_pred_3 + class_1_pred_4 + class_1_pred_5;
        let class_2_proba: i128 = class_2_pred_0 + class_2_pred_1 + class_2_pred_2 + class_2_pred_3 + class_2_pred_4 + class_2_pred_5;
        return Probas { class_0_proba: class_0_proba, class_1_proba: class_1_proba, class_2_proba: class_2_proba }; 
    } 
 }