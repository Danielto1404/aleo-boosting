program iris.aleo { 
     struct Probas { class_0_proba: i128, class_1_proba: i128, class_2_proba: i128 }

    function class_0_tree_0 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return 3929484129544999936i128; 
        } else { 
            return -2018489083989784320i128; 
        } 
    }

    function class_1_tree_0 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return -1964742207734766336i128; 
        } else { 
            if ( petal_width_cm < 6341068275337658368i128 ) { 
                if ( petal_length_cm < 6174969447489747968i128 ) { 
                    if ( sepal_length_cm < 1921535930170674688i128 ) { 
                        return 1185862049190082816i128; 
                    } else { 
                        return 3918500836666420736i128; 
                    } 
                } else { 
                    return 286242510738143040i128; 
                } 
            } else { 
                if ( petal_length_cm < 6018640891523617792i128 ) { 
                    return -70682894339i128; 
                } else { 
                    return -1934827925303798784i128; 
                } 
            } 
        } 
    }

    function class_2_tree_0 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_width_cm < 5956761472995800064i128 ) { 
            if ( petal_length_cm < 6174969447489747968i128 ) { 
                return -2018489083989784320i128; 
            } else { 
                return 1660206892846883328i128; 
            } 
        } else { 
            return 3580838895664458240i128; 
        } 
    }

    function class_0_tree_1 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return 2704362649706092032i128; 
        } else { 
            return -1806660879040240640i128; 
        } 
    }

    function class_1_tree_1 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return -1748026814644054528i128; 
        } else { 
            if ( petal_width_cm < 6341068275337658368i128 ) { 
                if ( petal_length_cm < 6174969447489747968i128 ) { 
                    if ( petal_width_cm < 5572453573072669696i128 ) { 
                        return 2719391046082246144i128; 
                    } else { 
                        return 783270643198562688i128; 
                    } 
                } else { 
                    return 281043074560039104i128; 
                } 
            } else { 
                if ( petal_length_cm < 6018640891523617792i128 ) { 
                    return 103223388441878704i128; 
                } else { 
                    return -1731678728973494784i128; 
                } 
            } 
        } 
    }

    function class_2_tree_1 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_width_cm < 6341068275337658368i128 ) { 
            if ( petal_length_cm < 6174969447489747968i128 ) { 
                if ( petal_width_cm < 5572453573072669696i128 ) { 
                    return -1801492212031251712i128; 
                } else { 
                    return 68663964239561904i128; 
                } 
            } else { 
                return 792288287922135296i128; 
            } 
        } else { 
            if ( petal_length_cm < 6018640891523617792i128 ) { 
                return 724455910468581376i128; 
            } else { 
                return 2722240431628963840i128; 
            } 
        } 
    }

    function class_0_tree_2 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return 2166018801287172096i128; 
        } else { 
            return -1664421189881102848i128; 
        } 
    }

    function class_1_tree_2 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return -1598397986998287104i128; 
        } else { 
            if ( petal_width_cm < 6341068275337658368i128 ) { 
                if ( petal_length_cm < 6174969447489747968i128 ) { 
                    if ( sepal_length_cm < 1921535930170674688i128 ) { 
                        return 632366657620921216i128; 
                    } else { 
                        return 2172163697662657792i128; 
                    } 
                } else { 
                    return 234588279247706912i128; 
                } 
            } else { 
                if ( petal_length_cm < 6018640891523617792i128 ) { 
                    return 86421493682491888i128; 
                } else { 
                    return -1578096053873084672i128; 
                } 
            } 
        } 
    }

    function class_2_tree_2 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_width_cm < 6341068275337658368i128 ) { 
            if ( petal_length_cm < 6174969447489747968i128 ) { 
                if ( petal_width_cm < 5572453573072669696i128 ) { 
                    return -1655057742493124352i128; 
                } else { 
                    return 54669852730619272i128; 
                } 
            } else { 
                return 635221265440886144i128; 
            } 
        } else { 
            if ( petal_length_cm < 6018640891523617792i128 ) { 
                return 592695316710953600i128; 
            } else { 
                return 2168825169026709760i128; 
            } 
        } 
    }

    function class_0_tree_3 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return 1866412327288575488i128; 
        } else { 
            return -1562888567282090496i128; 
        } 
    }

    function class_1_tree_3 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return -1486055526255220736i128; 
        } else { 
            if ( petal_width_cm < 6341068275337658368i128 ) { 
                if ( petal_length_cm < 6331298012679249920i128 ) { 
                    if ( sepal_width_cm < 960767969697023360i128 ) { 
                        return 285889017626132928i128; 
                    } else { 
                        if ( sepal_length_cm < 1921535930170674688i128 ) { 
                            return 468031863316326656i128; 
                        } else { 
                            return 1930724271840533504i128; 
                        } 
                    } 
                } else { 
                    return -88932640836678576i128; 
                } 
            } else { 
                if ( petal_length_cm < 6018640891523617792i128 ) { 
                    return 77834599894355280i128; 
                } else { 
                    return -1461082591606021888i128; 
                } 
            } 
        } 
    }

    function class_2_tree_3 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 5862312870513065984i128 ) { 
            if ( petal_width_cm < 5572453573072669696i128 ) { 
                return -1548479335870770176i128; 
            } else { 
                return 109938278141195680i128; 
            } 
        } else { 
            if ( petal_width_cm < 6341068275337658368i128 ) { 
                if ( sepal_width_cm < 2497996405772937216i128 ) { 
                    return 1146683562854253440i128; 
                } else { 
                    return -672699286635815296i128; 
                } 
            } else { 
                if ( petal_length_cm < 6018640891523617792i128 ) { 
                    return 488689934816639424i128; 
                } else { 
                    return 1860064572068511232i128; 
                } 
            } 
        } 
    }

    function class_0_tree_4 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return 1676465373458105088i128; 
        } else { 
            return -1486550987354296576i128; 
        } 
    }

    function class_1_tree_4 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return -1395113539140434688i128; 
        } else { 
            if ( petal_width_cm < 6341068275337658368i128 ) { 
                if ( petal_length_cm < 6174969447489747968i128 ) { 
                    if ( petal_width_cm < 5572453573072669696i128 ) { 
                        return 1692327064604301312i128; 
                    } else { 
                        return 291517297254102016i128; 
                    } 
                } else { 
                    return 121611165653482240i128; 
                } 
            } else { 
                if ( sepal_length_cm < 4227378662683207680i128 ) { 
                    return 94382576051670960i128; 
                } else { 
                    return -1410906101113214464i128; 
                } 
            } 
        } 
    }

    function class_2_tree_4 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 5862312870513065984i128 ) { 
            if ( petal_width_cm < 5572453573072669696i128 ) { 
                return -1469074256094331136i128; 
            } else { 
                return 163314190372891296i128; 
            } 
        } else { 
            if ( petal_width_cm < 6341068275337658368i128 ) { 
                if ( sepal_width_cm < 2497996405772937216i128 ) { 
                    return 1045625178375260032i128; 
                } else { 
                    return -594840738532667520i128; 
                } 
            } else { 
                if ( sepal_length_cm < 4227378662683207680i128 ) { 
                    if ( sepal_width_cm < 2882303761517117440i128 ) { 
                        return 941961025275158528i128; 
                    } else { 
                        return -90608983723756032i128; 
                    } 
                } else { 
                    return 1715712712266189568i128; 
                } 
            } 
        } 
    }

    function class_0_tree_5 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return 1543767105873768960i128; 
        } else { 
            return -1424347219725430528i128; 
        } 
    }

    function class_1_tree_5 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 2266760870222161408i128 ) { 
            return -1315843424967010816i128; 
        } else { 
            if ( petal_width_cm < 6341068275337658368i128 ) { 
                if ( petal_length_cm < 6331298012679249920i128 ) { 
                    if ( sepal_width_cm < 960767969697023360i128 ) { 
                        return 67823151406739256i128; 
                    } else { 
                        if ( sepal_length_cm < 1921535930170674688i128 ) { 
                            return 155371489999714240i128; 
                        } else { 
                            return 1626688974397512448i128; 
                        } 
                    } 
                } else { 
                    return -164946226394312992i128; 
                } 
            } else { 
                if ( petal_length_cm < 6018640891523617792i128 ) { 
                    return 204274021599012320i128; 
                } else { 
                    return -1292882596597767936i128; 
                } 
            } 
        } 
    }

    function class_2_tree_5 ( sepal_length_cm: i128, sepal_width_cm: i128, petal_length_cm: i128, petal_width_cm: i128 ) -> i128 { 
        if ( petal_length_cm < 5862312870513065984i128 ) { 
            if ( petal_width_cm < 5572453573072669696i128 ) { 
                return -1401233145029795328i128; 
            } else { 
                return 147434081075074720i128; 
            } 
        } else { 
            if ( petal_length_cm < 6487626024466429952i128 ) { 
                if ( petal_width_cm < 6341068275337658368i128 ) { 
                    return -706410519584381184i128; 
                } else { 
                    if ( sepal_width_cm < 4035225266123964416i128 ) { 
                        return 1430641783758958336i128; 
                    } else { 
                        return -255669713670220544i128; 
                    } 
                } 
            } else { 
                return 1619883684584187648i128; 
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