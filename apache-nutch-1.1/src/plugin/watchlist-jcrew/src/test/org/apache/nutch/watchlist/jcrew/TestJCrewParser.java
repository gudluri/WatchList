/**
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.apache.nutch.watchlist.jcrew;

import org.apache.nutch.metadata.Metadata;
import org.apache.nutch.parse.Parse;
import org.apache.nutch.parse.ParseUtil;
import org.apache.nutch.protocol.Content;
import org.apache.hadoop.conf.Configuration;
import org.apache.nutch.util.NutchConfiguration;
import org.apache.nutch.watchlist.WatchListConfig;

import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.io.*;
import java.net.URL;

import junit.framework.TestCase;

/**
 * Test lots of offline jcrew product pages
 * Since there are too many test cases, and I often got Java OutOfMemory Exception
 * I divided tests into several separate test function
 * 
 * @author Si Chen
 */
public class TestJCrewParser extends TestCase {

    private static final File testDir = new File(System.getProperty("test.input"));
    private int num = 0;

    public void testPages() throws Exception {
        pageTest(new File(testDir, "85984.jsp"), "Cashmere V-neck sweater",
                "http://www.jcrew.com/wedding/Wedding_Honeymoon/husband/PRDOVR~85984/85984.jsp");

        pageTest(new File(testDir, "91286.jsp"),
                "Tall Secret Wash button-down shirt in banker stripe",
                "http://www.jcrew.com/mens_special_sizes/tall/shirts/PRDOVR~91286/91286.jsp");

        pageTest(new File(testDir, "31132.jsp"), "Britten tall flat boots with extended calf",
                "http://www.jcrew.com/womens_special_sizes/extendedcalfboots/PRDOVR~31132/31132.jsp");

        pageTest(new File(testDir, "16562.jsp"), "Italian wool Aldridge suit pant",
                "http://www.jcrew.com/wedding/Wedding_Groom_Groomsmen/suits/PRDOVR~16562/16562.jsp");

        pageTest(new File(testDir, "16563.jsp"),
                "Italian wool Ludlow three-button suit jacket with center vent",
                "http://www.jcrew.com/mens_special_shops/themonogramshop/suiting/PRDOVR~16563/16563.jsp");

	//        pageTest(new File(testDir, "15771.jsp"), "Tall jasp crewneck tee",
	//                "http://www.jcrew.com/mens_special_sizes/tall/polostees/PRDOVR~15771/15771.jsp");

	//        pageTest(new File(testDir, "81595.jsp"), "Kids' Converse� Jack Purcell� sneakers",
	//                "http://www.jcrew.com/boys_category/shoes/sneakers/PRDOVR~81595/81595.jsp");

        pageTest(new File(testDir, "16560.jsp"), "Italian wool suit vest",
                "http://www.jcrew.com/mens_category/sportcoatsandvests/vests/PRDOVR~16560/16560.jsp");

        // Another sold out item
        pageTest(new File(testDir, "29957.jsp"), "Charlize vest",
                "http://www.jcrew.com/womens_category/outerwear/novelty/PRDOVR~29957/29957.jsp");

        pageTest(new File(testDir, "81554.jsp"), "Italian chino Ludlow suit pant",
                "http://www.jcrew.com/mens_category/pants/suitpants/PRDOVR~81554/81554.jsp");

        pageTest(new File(testDir, "63050.jsp"), "Silk tricotine Sophia gown",
                "http://www.jcrew.com/AST/filterAsst/dress_style/long/PRDOVR~63050/63050.jsp");

        pageTest(new File(testDir, "75200.jsp"), "Tall Secret Wash point-collar solid shirt",
                "http://www.jcrew.com/mens_special_sizes/tall/shirts/PRDOVR~75200/75200.jsp");

        pageTest(new File(testDir, "16855.jsp"),
                "Italian wool pinstripe Aldridge two-button suit jacket with center vent",
                "http://www.jcrew.com/mens_category/sportcoatsandvests/suiting/PRDOVR~16855/16855.jsp");

        pageTest(new File(testDir, "10730.jsp"), "D-cup solid twist-front bandeau tank",
                "http://www.jcrew.com/womens_special_sizes/size16/swim/PRDOVR~10730/10730.jsp");

        pageTest(new File(testDir, "16563.jsp"),
                "Italian wool Ludlow three-button suit jacket with center vent",
                "http://www.jcrew.com/wedding/Wedding_Groom_Groomsmen/suits/PRDOVR~16563/16563.jsp");

        pageTest(new File(testDir, "16561.jsp"), "Italian wool Ludlow suit pant",
                "http://www.jcrew.com/mens_feature/backbypopulardemand/suiting/PRDOVR~16561/16561.jsp");

        pageTest(new File(testDir, "10143.jsp"), "Solid string top",
                "http://www.jcrew.com/wedding/Wedding_Bride/honeymoon/PRDOVR~10143/10143.jsp");

        pageTest(new File(testDir, "15212.jsp"),
                "Tall Secret Wash lightweight point-collar shirt in medium gingham",
                "http://www.jcrew.com/mens_special_sizes/tall/shirts/PRDOVR~15212/15212.jsp");

        pageTest(new File(testDir, "28961.jsp"),
                "Petite classic pinstripe banquette dress in super 120s",
                "http://www.jcrew.com/womens_special_sizes/petite/suiting/PRDOVR~28961/28961.jsp");

        pageTest(
                new File(testDir, "16565.jsp"),
                "Italian wool Aldridge three-button suit jacket with center vent",
                "http://www.jcrew.com/mens_category/suitinganddressshirts/italianwoolAldridgesuiting/PRDOVR~16565/16565.jsp");

        pageTest(new File(testDir, "16565.jsp"),
                "Italian wool Aldridge three-button suit jacket with center vent",
                "http://www.jcrew.com/mens_special_shops/themonogramshop/suiting/PRDOVR~16565/16565.jsp");

        pageTest(new File(testDir, "36989.jsp"),
                "Tall Secret Wash lightweight button-down solid shirt",
                "http://www.jcrew.com/mens_special_sizes/tall/shirts/PRDOVR~36989/36989.jsp");

        // Another sold out item
        pageTest(new File(testDir, "36032.jsp"), "Imogene + Willie for J.Crew jean in dark wash",
                "http://www.jcrew.com/mens_category/denim/imogenewillie/PRDOVR~36032/36032.jsp");

        pageTest(new File(testDir, "96454.jsp"), "Silk chiffon Sophia dress",
                "http://www.jcrew.com/wedding/Wedding_Bridesmaid/dresses/silkchiffon/PRDOVR~96454/96454.jsp");

        pageTest(new File(testDir, "16562.jsp"), "Italian wool Aldridge suit pant",
                "http://www.jcrew.com/mens_category/pants/suitpants/PRDOVR~16562/16562.jsp");

        // Another sold out item
	//        pageTest(new File(testDir, "35671.jsp"), "Authier� plaid shirt-jacket",
	//                "http://www.jcrew.com/womens_category/outerwear/ingoodcompany/PRDOVR~35671/35671.jsp");

        pageTest(new File(testDir, "96454.jsp"), "Silk chiffon Sophia dress",
                "http://www.jcrew.com/wedding/Wedding_Honeymoon/wife/PRDOVR~96454/96454.jsp");

        pageTest(new File(testDir, "16564.jsp"),
                "Italian wool Aldridge two-button suit jacket with center vent",
                "http://www.jcrew.com/mens_feature/weartoworkshop/suiting/PRDOVR~16564/16564.jsp");

        // Another sold out item
	//        pageTest(new File(testDir, "35672.jsp"), "Authier� solid ripstop vest",
	//                "http://www.jcrew.com/womens_category/outerwear/ingoodcompany/PRDOVR~35672/35672.jsp");

        pageTest(new File(testDir, "16563.jsp"),
                "Italian wool Ludlow three-button suit jacket with center vent",
                "http://www.jcrew.com/mens_special_sizes/tall/suits/PRDOVR~16563/16563.jsp");

        pageTest(new File(testDir, "16563.jsp"),
                "Italian wool Ludlow three-button suit jacket with center vent",
                "http://www.jcrew.com/mens_feature/weartoworkshop/suiting/PRDOVR~16563/16563.jsp");

        pageTest(new File(testDir, "94400.jsp"), "Fine-stripe cotton suit vest",
                "http://www.jcrew.com/mens_category/sportcoatsandvests/vests/PRDOVR~94400/94400.jsp");

        pageTest(new File(testDir, "16564.jsp"),
                "Italian wool Aldridge two-button suit jacket with center vent",
                "http://www.jcrew.com/mens_category/sportcoatsandvests/suiting/PRDOVR~16564/16564.jsp");

        // Not sold out but failed to parse title for the first round
        pageTest(new File(testDir, "33068.jsp"), "Marguerite leather wedges",
                "http://www.jcrew.com/womens_special_sizes/size512shoes/size5/PRDOVR~33068/33068.jsp");

        pageTest(new File(testDir, "29258.jsp"), "Tall matchstick jean in lived in wash",
                "http://www.jcrew.com/womens_special_sizes/tall/denim/PRDOVR~29258/29258.jsp");

        pageTest(new File(testDir, "29114.jsp"), "Cotton-cashmere cardigan",
                "http://www.jcrew.com/mens_special_shops/catalogjcrewcomexclusives/sweaters/PRDOVR~29114/29114.jsp");

        pageTest(new File(testDir, "28274.jsp"), "Tall 1035 pinstripe trouser in Super 120s",
                "http://www.jcrew.com/womens_special_sizes/tall/suiting/PRDOVR~28274/28274.jsp");

        pageTest(new File(testDir, "30469.jsp"), "Tall bi-stretch wool Minnie pant",
                "http://www.jcrew.com/womens_special_sizes/tall/pants/PRDOVR~30469/30469.jsp");

        pageTest(new File(testDir, "20218.jsp"),
                "Tall Secret Wash button-down shirt in faded gingham",
                "http://www.jcrew.com/mens_special_sizes/tall/shirts/PRDOVR~20218/20218.jsp");

        pageTest(new File(testDir, "10737.jsp"), "D-cup solid twist-front bandeau top",
                "http://www.jcrew.com/womens_special_sizes/specialswimsizes/Dcup/PRDOVR~10737/10737.jsp");

        pageTest(new File(testDir, "20563.jsp"),
                "Ludlow two-button tuxedo jacket with double-vented back",
                "http://www.jcrew.com/mens_category/suitinganddressshirts/blacktie/PRDOVR~20563/20563.jsp");

        pageTest(new File(testDir, "16561.jsp"), "Italian wool Ludlow suit pant",
                "http://www.jcrew.com/mens_feature/weartoworkshop/suiting/PRDOVR~16561/16561.jsp");

        pageTest(new File(testDir, "20564.jsp"), "Ludlow tuxedo pant",
                "http://www.jcrew.com/mens_category/suitinganddressshirts/blacktie/PRDOVR~20564/20564.jsp");

        pageTest(new File(testDir, "88041.jsp"), "Sterling-silver tie clip",
                "http://www.jcrew.com/mens_category/suitinganddressshirts/blacktie/PRDOVR~88041/88041.jsp");

        pageTest(new File(testDir, "90795.jsp"), "Pinstripe high pencil skirt in super 120s",
                "http://www.jcrew.com/womens_category/skirts/pencil/PRDOVR~90795/90795.jsp");

        pageTest(new File(testDir, "16854.jsp"),
                "Italian wool pinstripe Ludlow three-button suit jacket with center vent",
                "http://www.jcrew.com/mens_special_shops/themonogramshop/suiting/PRDOVR~16854/16854.jsp");

        pageTest(new File(testDir, "16899.jsp"),
                "Fine-stripe cotton Ludlow two-button suit jacket with center vent",
                "http://www.jcrew.com/mens_category/suitinganddressshirts/cottonsuiting/PRDOVR~16899/16899.jsp");

        pageTest(new File(testDir, "89387.jsp"), "Italian chino Aldridge suit pant",
                "http://www.jcrew.com/mens_category/pantsbyfit/regular/PRDOVR~89387/89387.jsp");

        pageTest(new File(testDir, "16561.jsp"), "Italian wool Ludlow suit pant",
                "http://www.jcrew.com/mens_feature/theliquorstore/suiting/PRDOVR~16561/16561.jsp");

        pageTest(new File(testDir, "31187.jsp"),
                "Slim Secret Wash button-down end-on-end shirt in waterfall",
                "http://www.jcrew.com/mens_feature/spotlightslimfit/PRDOVR~31187/31187.jsp");

        pageTest(new File(testDir, "16560.jsp"), "Italian wool suit vest",
                "http://www.jcrew.com/mens_feature/weartoworkshop/suiting/PRDOVR~16560/16560.jsp");

        pageTest(new File(testDir, "16560.jsp"), "Italian wool suit vest",
                "http://www.jcrew.com/wedding/Wedding_Groom_Groomsmen/suits/PRDOVR~16560/16560.jsp");

        pageTest(new File(testDir, "10718.jsp"), "Padded solid string top",
                "http://www.jcrew.com/womens_special_sizes/specialswimsizes/padded/PRDOVR~10718/10718.jsp");

        pageTest(new File(testDir, "36344.jsp"),
                "Slim Secret Wash lightweight button-down shirt in Van Buren gingham",
                "http://www.jcrew.com/mens_special_sizes/slim/PRDOVR~36344/36344.jsp");

        pageTest(
                new File(testDir, "89387.jsp"),
                "Italian chino Aldridge suit pant",
                "http://www.jcrew.com/mens_category/suitinganddressshirts/italianchinoAldridgesuiting/PRDOVR~89387/89387.jsp");

        pageTest(new File(testDir, "68015.jsp"), "Secret Wash point-collar solid shirt",
                "http://www.jcrew.com/mens_special_shops/themonogramshop/shirts/PRDOVR~68015/68015.jsp");
    }

    /*
     * Si: I have to turn off the following test cases, because too many test cases used up Java Heap Memory
     *     and I often got OutOfMemory Exception
     *     To turn it on again, remove NO
     */
    public void NOtestSomeExtraPages() throws Exception {
        // Sold out item
        pageTest(new File(testDir, "36032.jsp"), "Imogene + Willie for J.Crew jean in dark wash",
                "http://www.jcrew.com/mens_feature/theliquorstore/collectionpants/PRDOVR~36032/36032.jsp");

        pageTest(
                new File(testDir, "16560.jsp"),
                "Italian wool suit vest",
                "http://www.jcrew.com/mens_category/suitinganddressshirts/italianwoolsuiting/PRDOVR~16560/16560.jsp");

        pageTest(new File(testDir, "94401.jsp"), "Fine-stripe cotton Ludlow suit pant",
                "http://www.jcrew.com/mens_category/suitinganddressshirts/cottonsuiting/PRDOVR~94401/94401.jsp");

        pageTest(new File(testDir, "10740.jsp"), "Long torso solid twist-front bandeau tank",
                "http://www.jcrew.com/womens_special_sizes/specialswimsizes/longtorso/PRDOVR~10740/10740.jsp");

        // Sold out item
        pageTest(new File(testDir, "29476.jsp"), "Mongolian lamb tote",
                "http://www.jcrew.com/womens_category/bags/occasionbags/PRDOVR~29476/29476.jsp");

        pageTest(new File(testDir, "29993.jsp"), "Petite double-serge pencil skirt",
                "http://www.jcrew.com/womens_special_sizes/petite/skirts/PRDOVR~29993/29993.jsp");

        pageTest(new File(testDir, "10737.jsp"), "D-cup solid twist-front bandeau top",
                "http://www.jcrew.com/womens_category/swim/specialswimsizes/dcup/PRDOVR~10737/10737.jsp");

        pageTest(new File(testDir, "86034.jsp"), "Classic two-button jacket in super 120s",
                "http://www.jcrew.com/womens_category/blazers/suitingjackets/PRDOVR~86034/86034.jsp");

        pageTest(new File(testDir, "94400.jsp"), "Fine-stripe cotton suit vest",
                "http://www.jcrew.com/mens_category/suitinganddressshirts/cottonsuiting/PRDOVR~94400/94400.jsp");

        pageTest(new File(testDir, "91380.jsp"), "Pencil skirt in wool crepe",
                "http://www.jcrew.com/womens_category/suiting/crepe/PRDOVR~91380/91380.jsp");

        pageTest(new File(testDir, "16855.jsp"),
                "Italian wool pinstripe Aldridge two-button suit jacket with center vent",
                "http://www.jcrew.com/wedding/Wedding_Groom_Groomsmen/suits/PRDOVR~16855/16855.jsp");

        pageTest(new File(testDir, "16851.jsp"), "Italian wool pinstripe suit vest",
                "http://www.jcrew.com/mens_category/sportcoatsandvests/vests/PRDOVR~16851/16851.jsp");

        pageTest(new File(testDir, "14990.jsp"),
                "Italian chino Aldridge three-button suit jacket with center vent",
                "http://www.jcrew.com/mens_category/sportcoatsandvests/suiting/PRDOVR~14990/14990.jsp");

        pageTest(new File(testDir, "10237.jsp"), "Solid wrap-front tank",
                "http://www.jcrew.com/womens_category/swim/onepiecetanks/PRDOVR~10237/10237.jsp");

        pageTest(new File(testDir, "85984.jsp"), "Cashmere V-neck sweater",
                "http://www.jcrew.com/mens_feature/theliquorstore/sweaters/PRDOVR~85984/85984.jsp");

        pageTest(new File(testDir, "10503.jsp"), "Tall cashmere V-neck sweater",
                "http://www.jcrew.com/mens_special_sizes/tall/sweaters/PRDOVR~10503/10503.jsp");

        pageTest(new File(testDir, "16565.jsp"),
                "Italian wool Aldridge three-button suit jacket with center vent",
                "http://www.jcrew.com/wedding/Wedding_Groom_Groomsmen/suits/PRDOVR~16565/16565.jsp");

        pageTest(new File(testDir, "28657.jsp"), "D-cup solid ruched halter tank",
                "http://www.jcrew.com/womens_special_sizes/specialswimsizes/Dcup/PRDOVR~28657/28657.jsp");

	//        pageTest(new File(testDir, "13259.jsp"), "Jasp crewneck tee",
	//                "http://www.jcrew.com/mens_special_shops/theresortshop/PRDOVR~13259/13259.jsp");

        pageTest(new File(testDir, "16852.jsp"), "Italian wool pinstripe Ludlow suit pant",
                "http://www.jcrew.com/wedding/Wedding_Groom_Groomsmen/suits/PRDOVR~16852/16852.jsp");

	//        pageTest(new File(testDir, "15770.jsp"), "Tall jasp V-neck tee",
	//                "http://www.jcrew.com/mens_special_sizes/tall/polostees/PRDOVR~15770/15770.jsp");

        pageTest(new File(testDir, "97904.jsp"), "Point-collar regular-fit dress shirt in white",
                "http://www.jcrew.com/mens_category/shirts/dressshirts/PRDOVR~97904/97904.jsp");

        pageTest(new File(testDir, "16560.jsp"), "Italian wool suit vest",
                "http://www.jcrew.com/mens_special_shops/catalogjcrewcomexclusives/suiting/PRDOVR~16560/16560.jsp");

        pageTest(new File(testDir, "16565.jsp"),
                "Italian wool Aldridge three-button suit jacket with center vent",
                "http://www.jcrew.com/mens_feature/weartoworkshop/suiting/PRDOVR~16565/16565.jsp");

        pageTest(new File(testDir, "91031.jsp"), "Irish linen Ludlow suit pant",
                "http://www.jcrew.com/mens_category/pants/suitpants/PRDOVR~91031/91031.jsp");

        pageTest(new File(testDir, "97904.jsp"), "Point-collar regular-fit dress shirt in white",
                "http://www.jcrew.com/mens_feature/weartoworkshop/dressshirts/PRDOVR~97904/97904.jsp");

        pageTest(new File(testDir, "27687.jsp"), "Tall 1035 trouser in Super 120s",
                "http://www.jcrew.com/womens_special_sizes/tall/suiting/PRDOVR~27687/27687.jsp");

        pageTest(new File(testDir, "28276.jsp"), "Tall Pinstripe Dietrich jacket in super 120s",
                "http://www.jcrew.com/womens_special_sizes/tall/jacketsandouterwear/PRDOVR~28276/28276.jsp");

        // Failed to parse title for the first round
        pageTest(
                new File(testDir, "16563.jsp"),
                "Italian wool Ludlow three-button suit jacket with center vent",
                "http://www.jcrew.com/mens_category/suitinganddressshirts/italianwoolsuiting/PRDOVR~16563/16563.jsp");

        pageTest(new File(testDir, "33892.jsp"), "TALL ultra-knit pant",
                "http://www.jcrew.com/womens_special_sizes/tall/jcrewweekendandsleepwear/PRDOVR~33892/33892.jsp");

        pageTest(new File(testDir, "29091.jsp"), "Tall Stockton racer jacket",
                "http://www.jcrew.com/mens_special_sizes/tall/sportcoatsouterwear/PRDOVR~29091/29091.jsp");

        // Sold out item
        pageTest(new File(testDir, "34751.jsp"), "Fremont tartan tie",
                "http://www.jcrew.com/mens_category/ties/cottonties/PRDOVR~34751/34751.jsp");

        pageTest(new File(testDir, "10230.jsp"), "Solid twist-front bandeau tank",
                "http://www.jcrew.com/womens_category/swim/onepiecetanks/PRDOVR~10230/10230.jsp");

        pageTest(new File(testDir, "16561.jsp"), "Italian wool Ludlow suit pant",
                "http://www.jcrew.com/mens_category/pants/suitpants/PRDOVR~16561/16561.jsp");

        pageTest(new File(testDir, "10129.jsp"), "Dreamy cotton pant",
                "http://www.jcrew.com/womens_special_shops/themonogramshop/sleepwear/PRDOVR~10129/10129.jsp");

        pageTest(new File(testDir, "10271.jsp"), "Solid twist-front swing top",
                "http://www.jcrew.com/womens_special_sizes/specialswimsizes/padded/PRDOVR~10271/10271.jsp");

        pageTest(new File(testDir, "16565.jsp"),
                "Italian wool Aldridge three-button suit jacket with center vent",
                "http://www.jcrew.com/mens_category/sportcoatsandvests/suiting/PRDOVR~16565/16565.jsp");

        pageTest(new File(testDir, "96230.jsp"), "Silk tricotine Cecelia gown",
                "http://www.jcrew.com/wedding/womens/w_bridesmaids/PRDOVR~96230/96230.jsp");

        pageTest(new File(testDir, "20563.jsp"),
                "Ludlow two-button tuxedo jacket with double-vented back",
                "http://www.jcrew.com/wedding/Wedding_Groom_Groomsmen/tuxedos/PRDOVR~20563/20563.jsp");

        pageTest(new File(testDir, "33911.jsp"), "Tall Stripe dreamy cotton pant",
                "http://www.jcrew.com/womens_special_sizes/tall/jcrewweekendandsleepwear/PRDOVR~33911/33911.jsp");

        pageTest(new File(testDir, "96454.jsp"), "Silk chiffon Sophia dress",
                "http://www.jcrew.com/wedding/womens/w_bridesmaids/PRDOVR~96454/96454.jsp");

        pageTest(new File(testDir, "11922.jsp"), "Silk taffeta Lorelei dress",
                "http://www.jcrew.com/womens_special_sizes/size16/dresses/PRDOVR~11922/11922.jsp");

        pageTest(new File(testDir, "86034.jsp"), "Classic two-button jacket in super 120s",
                "http://www.jcrew.com/womens_special_shops/weartoworkshop/blazers/PRDOVR~86034/86034.jsp");

        pageTest(new File(testDir, "16561.jsp"), "Italian wool Ludlow suit pant",
                "http://www.jcrew.com/mens_special_sizes/tall/suits/PRDOVR~16561/16561.jsp");

        pageTest(new File(testDir, "16562.jsp"), "Italian wool Aldridge suit pant",
                "http://www.jcrew.com/mens_category/pantsbyfit/regular/PRDOVR~16562/16562.jsp");

        pageTest(new File(testDir, "85984.jsp"), "Cashmere V-neck sweater",
                "http://www.jcrew.com/mens_feature/alwayslist/PRDOVR~85984/85984.jsp");

        pageTest(new File(testDir, "91380.jsp"), "Pencil skirt in wool crepe",
                "http://www.jcrew.com/womens_special_shops/weartoworkshop/skirts/PRDOVR~91380/91380.jsp");

        pageTest(new File(testDir, "14959.jsp"),
                "Italian chino Aldridge two-button suit jacket with center vent",
                "http://www.jcrew.com/mens_category/sportcoatsandvests/suiting/PRDOVR~14959/14959.jsp");

        pageTest(new File(testDir, "28961.jsp"),
                "Petite classic pinstripe banquette dress in super 120s",
                "http://www.jcrew.com/womens_special_sizes/petite/dresses/PRDOVR~28961/28961.jsp");

        // Sold out item
        pageTest(new File(testDir, "29111.jsp"), "Mongolian lamb vest",
                "http://www.jcrew.com/womens_category/outerwear/novelty/PRDOVR~29111/29111.jsp");

        pageTest(new File(testDir, "27690.jsp"), "Tall Nouvelle jacket in super 120s",
                "http://www.jcrew.com/womens_special_sizes/tall/jacketsandouterwear/PRDOVR~27690/27690.jsp");

        pageTest(
                new File(testDir, "16562.jsp"),
                "Italian wool Aldridge suit pant",
                "http://www.jcrew.com/mens_category/suitinganddressshirts/italianwoolAldridgesuiting/PRDOVR~16562/16562.jsp");

        pageTest(new File(testDir, "27688.jsp"), "Petite Nouvelle jacket in super 120s",
                "http://www.jcrew.com/womens_special_sizes/petite/suiting/PRDOVR~27688/27688.jsp");

        pageTest(new File(testDir, "10230.jsp"), "Solid twist-front bandeau tank",
                "http://www.jcrew.com/womens_special_sizes/size16/swim/PRDOVR~10230/10230.jsp");

        pageTest(new File(testDir, "86034.jsp"), "Classic two-button jacket in super 120s",
                "http://www.jcrew.com/womens_feature/catalogjcrewcomexclusives/suiting/PRDOVR~86034/86034.jsp");

        pageTest(new File(testDir, "28123.jsp"), "Tall wool university coat",
                "http://www.jcrew.com/mens_special_sizes/tall/sportcoatsouterwear/PRDOVR~28123/28123.jsp");

        pageTest(new File(testDir, "90804.jsp"), "Pinstripe two-button jacket in super 120s",
                "http://www.jcrew.com/womens_category/suiting/super120spinstripe/PRDOVR~90804/90804.jsp");

    }

    public void NOtestMorePages() throws Exception {
	//        pageTest(new File(testDir, "81595.jsp"), "Kids' Converse� Jack Purcell� sneakers",
	//                "http://www.jcrew.com/girls_feature/borrowedfrommybrother/shoes/PRDOVR~81595/81595.jsp");

        // Sold out item
	//        pageTest(new File(testDir, "35658.jsp"), "Authier� nylon jacket",
	//                "http://www.jcrew.com/womens_category/outerwear/ingoodcompany/PRDOVR~35658/35658.jsp");

        pageTest(new File(testDir, "34051.jsp"), "Cashmere getaway hoodie",
                "http://www.jcrew.com/womens_category/sweaters/turtlenecksandhoodies/PRDOVR~34051/34051.jsp");

        pageTest(new File(testDir, "91031.jsp"), "Irish linen Ludlow suit pant",
                "http://www.jcrew.com/mens_category/suitinganddressshirts/linensuiting/PRDOVR~91031/91031.jsp");

        pageTest(new File(testDir, "28273.jsp"), "Petite 1035 pinstripe trouser in Super 120s",
                "http://www.jcrew.com/womens_special_sizes/petite/suiting/PRDOVR~28273/28273.jsp");

        pageTest(new File(testDir, "16563.jsp"),
                "Italian wool Ludlow three-button suit jacket with center vent",
                "http://www.jcrew.com/mens_feature/theliquorstore/suiting/PRDOVR~16563/16563.jsp");

        pageTest(new File(testDir, "90795.jsp"), "Pinstripe high pencil skirt in super 120s",
                "http://www.jcrew.com/womens_special_shops/weartoworkshop/skirts/PRDOVR~90795/90795.jsp");

        pageTest(new File(testDir, "90805.jsp"), "Tall pinstripe two-button jacket in super 120s",
                "http://www.jcrew.com/womens_special_sizes/tall/jacketsandouterwear/PRDOVR~90805/90805.jsp");

        pageTest(new File(testDir, "97893.jsp"), "Silk chiffon Juliet dress",
                "http://www.jcrew.com/wedding/Wedding_Bridesmaid/dresses/silkchiffon/PRDOVR~97893/97893.jsp");

        pageTest(new File(testDir, "35593.jsp"), "Petite long Meribel puffer",
                "http://www.jcrew.com/womens_special_sizes/petite/jacketsouterwear/PRDOVR~35593/35593.jsp");

        pageTest(new File(testDir, "86013.jsp"), "High pencil skirt in super 120s",
                "http://www.jcrew.com/womens_special_sizes/size16/skirts/PRDOVR~86013/86013.jsp");

        pageTest(new File(testDir, "25269.jsp"),
                "Irish linen Ludlow two-button suit jacket with center vent",
                "http://www.jcrew.com/mens_category/suitinganddressshirts/linensuiting/PRDOVR~25269/25269.jsp");

        pageTest(new File(testDir, "88041.jsp"), "Sterling-silver tie clip",
                "http://www.jcrew.com/wedding/Wedding_Groom_Groomsmen/gifts/PRDOVR~88041/88041.jsp");

        pageTest(new File(testDir, "91380.jsp"), "Pencil skirt in wool crepe",
                "http://www.jcrew.com/womens_category/skirts/pencil/PRDOVR~91380/91380.jsp");

        pageTest(new File(testDir, "16855.jsp"),
                "Italian wool pinstripe Aldridge two-button suit jacket with center vent",
                "http://www.jcrew.com/mens_special_shops/themonogramshop/suiting/PRDOVR~16855/16855.jsp");

        pageTest(new File(testDir, "29237.jsp"), "Tall cotton-cashmere crewneck sweater",
                "http://www.jcrew.com/mens_special_sizes/tall/sweaters/PRDOVR~29237/29237.jsp");

	//        pageTest(new File(testDir, "13259.jsp"), "Jasp crewneck tee",
	//                "http://www.jcrew.com/mens_category/polostees/jaspe/PRDOVR~13259/13259.jsp");

        pageTest(new File(testDir, "88041.jsp"), "Sterling-silver tie clip",
                "http://www.jcrew.com/mens_category/ties/specialoccasion/PRDOVR~88041/88041.jsp");

        pageTest(new File(testDir, "12518.jsp"),
                "Tall point-collar regular-fit dress shirt in white",
                "http://www.jcrew.com/mens_special_sizes/tall/shirts/PRDOVR~12518/12518.jsp");

        pageTest(new File(testDir, "11231.jsp"),
                "Tall end-on-end point-collar regular-fit dress shirt",
                "http://www.jcrew.com/mens_special_sizes/tall/shirts/PRDOVR~11231/11231.jsp");

        pageTest(
                new File(testDir, "16855.jsp"),
                "Italian wool pinstripe Aldridge two-button suit jacket with center vent",
                "http://www.jcrew.com/mens_category/suitinganddressshirts/italianwoolAldridgesuiting/PRDOVR~16855/16855.jsp");

        pageTest(new File(testDir, "27690.jsp"), "Tall Nouvelle jacket in super 120s",
                "http://www.jcrew.com/womens_special_sizes/tall/suiting/PRDOVR~27690/27690.jsp");

        pageTest(new File(testDir, "31987.jsp"), "Weatherby tall boots with extended calf",
                "http://www.jcrew.com/womens_special_sizes/extendedcalfboots/PRDOVR~31987/31987.jsp");

        pageTest(new File(testDir, "96454.jsp"), "Silk chiffon Sophia dress",
                "http://www.jcrew.com/womens_special_sizes/size16/dresses/PRDOVR~96454/96454.jsp");

        pageTest(new File(testDir, "86013.jsp"), "High pencil skirt in super 120s",
                "http://www.jcrew.com/womens_special_shops/weartoworkshop/skirts/PRDOVR~86013/86013.jsp");

        pageTest(new File(testDir, "16563.jsp"),
                "Italian wool Ludlow three-button suit jacket with center vent",
                "http://www.jcrew.com/mens_category/sportcoatsandvests/suiting/PRDOVR~16563/16563.jsp");


    }

    public void NOtestMuchMorePages() throws Exception {
        pageTest(new File(testDir, "72977.jsp"), "Broken-in pocket crewneck tee",
                "http://www.jcrew.com/mens_category/polostees/brokeninjersey/PRDOVR~72977/72977.jsp");

        pageTest(new File(testDir, "29234.jsp"), "Cotton-cashmere crewneck sweater",
                "http://www.jcrew.com/mens_category/sweaters/cottoncashmere/PRDOVR~29234/29234.jsp");

        pageTest(new File(testDir, "33807.jsp"), "Harbour paisley ruched tank",
                "http://www.jcrew.com/womens_category/swim/patternsandprints/PRDOVR~33807/33807.jsp");

        pageTest(new File(testDir, "32453.jsp"), "Solid Sundrine flannel shirtdress",
                "http://www.jcrew.com/womens_category/dresses/day/PRDOVR~32453/32453.jsp");

        pageTest(new File(testDir, "32940.jsp"), "Girls' bateau tee",
                "http://www.jcrew.com/girls_feature/NewArrivals/knitstees/PRDOVR~32940/32940.jsp");

        pageTest(new File(testDir, "99215.jsp"), "Girls' solid tights",
                "http://www.jcrew.com/girls_feature/NewArrivals/jewelryaccessories/PRDOVR~99215/99215.jsp");

        pageTest(new File(testDir, "92002.jsp"), "Boys' Italian chino sportcoat",
                "http://www.jcrew.com/boys_category/jacketsandvests/jackets/PRDOVR~92002/92002.jsp");

        pageTest(new File(testDir, "37905.jsp"), "Sailor sweater",
                "http://www.jcrew.com/womens_category/sweaters/crewnecksandvnecks/PRDOVR~37905/37905.jsp");

        pageTest(new File(testDir, "35905.jsp"), "Indian voile boy shirt",
                "http://www.jcrew.com/womens_category/shirtstops/casualshirts/PRDOVR~35905/35905.jsp");

        pageTest(new File(testDir, "29521.jsp"), "Lacey top",
                "http://www.jcrew.com/womens_category/shirtstops/jcrewcollection/PRDOVR~29521/29521.jsp");

        pageTest(new File(testDir, "35351.jsp"), "Vintage cotton mixed lawn shirt",
                "http://www.jcrew.com/womens_category/knitstees/longsleevetees/PRDOVR~35351/35351.jsp");

        pageTest(new File(testDir, "33418.jsp"), "Always pocket cardigan",
                "http://www.jcrew.com/womens_category/jcrewweekend/PRDOVR~33418/33418.jsp");

        pageTest(
                new File(testDir, "18007.jsp"),
                "Boys' yarn-dyed cotton boxers",
                "http://www.jcrew.com/boys_category/boxers/wovenboxers/PRDOVR~18007/ENE~1+2+3+22+4294967294+20~~~20+18~15~~~~~~~/18007.jsp");

        pageTest(
                new File(testDir, "18212.jsp"),
                "Boys' print cotton boxers",
                "http://www.jcrew.com/AST/Navigation/Sale/AllProducts/PRDOVR~18212/99102181471/ENE~1+2+3+22+4294967294+20~~~20+18~15~~~~~~~/18212.jsp");

        /* below are the test cases generated by python log analysis script */
        pageTest(new File(testDir, "21653.jsp"), "D-cup solid ruched lido halter top",
                "http://www.jcrew.com/womens_category/swim/specialswimsizes/dcup/PRDOVR~21653/21653.jsp");

        pageTest(new File(testDir, "76064.jsp"), "Secret Wash button-down shirt in banker stripe",
                "http://www.jcrew.com/mens_special_shops/themonogramshop/shirts/PRDOVR~76064/76064.jsp");

        pageTest(new File(testDir, "29236.jsp"), "Tall cotton-cashmere V-neck sweater",
                "http://www.jcrew.com/mens_special_sizes/tall/sweaters/PRDOVR~29236/29236.jsp");

        pageTest(new File(testDir, "32668.jsp"), "Slim sunwashed flannel shirt in Parsons plaid",
                "http://www.jcrew.com/mens_feature/spotlightslimfit/PRDOVR~32668/32668.jsp");

	//        pageTest(new File(testDir, "81595.jsp"), "Kids' Converse� Jack Purcell� sneakers",
	//                "http://www.jcrew.com/girls_category/shoes/sneakers/PRDOVR~81595/81595.jsp");

        pageTest(new File(testDir, "35048.jsp"), "D-cup solid underwire tie french top",
                "http://www.jcrew.com/womens_category/swim/specialswimsizes/dcup/PRDOVR~35048/35048.jsp");

        pageTest(new File(testDir, "76064.jsp"), "Secret Wash button-down shirt in banker stripe",
                "http://www.jcrew.com/mens_category/shirts/washedfavoriteshirts/PRDOVR~76064/76064.jsp");

        pageTest(new File(testDir, "16564.jsp"),
                "Italian wool Aldridge two-button suit jacket with center vent",
                "http://www.jcrew.com/mens_special_shops/catalogjcrewcomexclusives/suiting/PRDOVR~16564/16564.jsp");

        pageTest(new File(testDir, "86013.jsp"), "High pencil skirt in super 120s",
                "http://www.jcrew.com/womens_special_sizes/size16/suiting/PRDOVR~86013/86013.jsp");

        pageTest(new File(testDir, "28626.jsp"), "D-cup Solid new glamour top",
                "http://www.jcrew.com/womens_category/swim/specialswimsizes/dcup/PRDOVR~28626/28626.jsp");

        pageTest(new File(testDir, "17701.jsp"), "Petite dreamy cotton pant",
                "http://www.jcrew.com/womens_special_sizes/petite/jcrewweekendandsleepwear/PRDOVR~17701/17701.jsp");

        pageTest(new File(testDir, "91045.jsp"), "Irish linen suit vest",
                "http://www.jcrew.com/mens_category/suitinganddressshirts/linensuiting/PRDOVR~91045/91045.jsp");

        pageTest(new File(testDir, "68015.jsp"), "Secret Wash point-collar solid shirt",
                "http://www.jcrew.com/mens_category/shirts/washedfavoriteshirts/PRDOVR~68015/68015.jsp");

        pageTest(new File(testDir, "31205.jsp"),
                "Slim Secret Wash button-down shirt in faded gingham",
                "http://www.jcrew.com/mens_special_sizes/slim/PRDOVR~31205/31205.jsp");

        pageTest(new File(testDir, "21350.jsp"),
                "Italian chino Ludlow two-button suit jacket with center vent",
                "http://www.jcrew.com/mens_special_sizes/tall/suits/PRDOVR~21350/21350.jsp");

        pageTest(new File(testDir, "11188.jsp"), "D-cup solid wrap-front tank",
                "http://www.jcrew.com/womens_special_sizes/specialswimsizes/Dcup/PRDOVR~11188/11188.jsp");

        pageTest(new File(testDir, "16854.jsp"),
                "Italian wool pinstripe Ludlow three-button suit jacket with center vent",
                "http://www.jcrew.com/wedding/Wedding_Groom_Groomsmen/suits/PRDOVR~16854/16854.jsp");

        pageTest(new File(testDir, "30468.jsp"), "Petite bi-stretch wool Minnie pant",
                "http://www.jcrew.com/womens_special_sizes/petite/pants/PRDOVR~30468/30468.jsp");

        pageTest(new File(testDir, "91380.jsp"), "Pencil skirt in wool crepe",
                "http://www.jcrew.com/womens_special_sizes/size16/skirts/PRDOVR~91380/91380.jsp");

        pageTest(new File(testDir, "10732.jsp"), "D-cup solid twist-front swing top",
                "http://www.jcrew.com/womens_special_sizes/specialswimsizes/Dcup/PRDOVR~10732/10732.jsp");

        pageTest(new File(testDir, "90795.jsp"), "Pinstripe high pencil skirt in super 120s",
                "http://www.jcrew.com/womens_special_sizes/size16/suiting/PRDOVR~90795/90795.jsp");

        pageTest(new File(testDir, "17182.jsp"), "Tall cotton-cashmere half-zip sweater",
                "http://www.jcrew.com/mens_special_sizes/tall/sweaters/PRDOVR~17182/17182.jsp");

        pageTest(new File(testDir, "16855.jsp"),
                "Italian wool pinstripe Aldridge two-button suit jacket with center vent",
                "http://www.jcrew.com/mens_special_shops/catalogjcrewcomexclusives/suiting/PRDOVR~16855/16855.jsp");

        pageTest(new File(testDir, "97904.jsp"), "Point-collar regular-fit dress shirt in white",
                "http://www.jcrew.com/mens_feature/alwayslist/PRDOVR~97904/97904.jsp");

        pageTest(
                new File(testDir, "16560.jsp"),
                "Italian wool suit vest",
                "http://www.jcrew.com/mens_category/suitinganddressshirts/italianwoolAldridgesuiting/PRDOVR~16560/16560.jsp");
    }

    public void NOtestEvenMorePages() throws Exception {


        pageTest(new File(testDir, "90804.jsp"), "Pinstripe two-button jacket in super 120s",
                "http://www.jcrew.com/womens_category/blazers/suitingjackets/PRDOVR~90804/90804.jsp");

        pageTest(new File(testDir, "85984.jsp"), "Cashmere V-neck sweater",
                "http://www.jcrew.com/mens_special_shops/themonogramshop/sweaters/PRDOVR~85984/85984.jsp");

        pageTest(new File(testDir, "90804.jsp"), "Pinstripe two-button jacket in super 120s",
                "http://www.jcrew.com/womens_special_sizes/size16/suiting/PRDOVR~90804/90804.jsp");

        pageTest(new File(testDir, "10740.jsp"), "Long torso solid twist-front bandeau tank",
                "http://www.jcrew.com/womens_special_sizes/size16/swim/PRDOVR~10740/10740.jsp");

	//        pageTest(new File(testDir, "28122.jsp"), "Tall wool university coat with Thinsulate�",
	//                "http://www.jcrew.com/mens_special_sizes/tall/sportcoatsouterwear/PRDOVR~28122/28122.jsp");

        pageTest(
                new File(testDir, "16851.jsp"),
                "Italian wool pinstripe suit vest",
                "http://www.jcrew.com/mens_category/suitinganddressshirts/italianwoolAldridgesuiting/PRDOVR~16851/16851.jsp");

        pageTest(
                new File(testDir, "81554.jsp"),
                "Italian chino Ludlow suit pant",
                "http://www.jcrew.com/mens_category/suitinganddressshirts/italianchinosuiting/PRDOVR~81554/81554.jsp");

        pageTest(new File(testDir, "28275.jsp"), "Petite pinstripe Dietrich jacket in super 120s",
                "http://www.jcrew.com/womens_special_sizes/petite/suiting/PRDOVR~28275/28275.jsp");

        pageTest(new File(testDir, "10210.jsp"), "Solid twist-front bandeau top",
                "http://www.jcrew.com/womens_special_sizes/specialswimsizes/padded/PRDOVR~10210/10210.jsp");

        pageTest(new File(testDir, "15213.jsp"),
                "Tall Secret Wash lightweight point-collar shirt in small gingham",
                "http://www.jcrew.com/mens_special_sizes/tall/shirts/PRDOVR~15213/15213.jsp");

        pageTest(new File(testDir, "20564.jsp"), "Ludlow tuxedo pant",
                "http://www.jcrew.com/wedding/Wedding_Groom_Groomsmen/tuxedos/PRDOVR~20564/20564.jsp");

        pageTest(new File(testDir, "10740.jsp"), "Long torso solid twist-front bandeau tank",
                "http://www.jcrew.com/womens_special_shops/themonogramshop/swim/PRDOVR~10740/10740.jsp");

        pageTest(new File(testDir, "14959.jsp"),
                "Italian chino Aldridge two-button suit jacket with center vent",
                "http://www.jcrew.com/mens_special_sizes/tall/suits/PRDOVR~14959/14959.jsp");

        pageTest(new File(testDir, "86034.jsp"), "Classic two-button jacket in super 120s",
                "http://www.jcrew.com/womens_special_sizes/size16/suiting/PRDOVR~86034/86034.jsp");

        pageTest(new File(testDir, "90804.jsp"), "Pinstripe two-button jacket in super 120s",
                "http://www.jcrew.com/womens_special_sizes/size16/jacketsouterwear/PRDOVR~90804/90804.jsp");

        pageTest(new File(testDir, "85984.jsp"), "Cashmere V-neck sweater",
                "http://www.jcrew.com/mens_feature/greatgiftsfordad/PRDOVR~85984/85984.jsp");

        pageTest(new File(testDir, "28276.jsp"), "Tall Pinstripe Dietrich jacket in super 120s",
                "http://www.jcrew.com/womens_special_sizes/tall/suiting/PRDOVR~28276/28276.jsp");

        pageTest(new File(testDir, "10235.jsp"), "Solid ruched bandeau tank",
                "http://www.jcrew.com/womens_category/swim/onepiecetanks/PRDOVR~10235/10235.jsp");

        pageTest(new File(testDir, "89387.jsp"), "Italian chino Aldridge suit pant",
                "http://www.jcrew.com/mens_category/pants/suitpants/PRDOVR~89387/89387.jsp");

        pageTest(new File(testDir, "32426.jsp"), "Girls' studded suede ballet flats",
                "http://www.jcrew.com/girls_category/shoes/flatsmoccasins/PRDOVR~32426/32426.jsp");

        pageTest(new File(testDir, "31187.jsp"),
                "Slim Secret Wash button-down end-on-end shirt in waterfall",
                "http://www.jcrew.com/mens_special_sizes/slim/PRDOVR~31187/31187.jsp");

        pageTest(new File(testDir, "16562.jsp"), "Italian wool Aldridge suit pant",
                "http://www.jcrew.com/mens_special_sizes/tall/suits/PRDOVR~16562/16562.jsp");

        pageTest(new File(testDir, "86034.jsp"), "Classic two-button jacket in super 120s",
                "http://www.jcrew.com/womens_special_sizes/size00/suiting/PRDOVR~86034/86034.jsp");

        pageTest(new File(testDir, "85867.jsp"),
                "Secret Wash point-collar shirt in reverse Bengal stripe",
                "http://www.jcrew.com/mens_special_shops/themonogramshop/shirts/PRDOVR~85867/85867.jsp");

        pageTest(new File(testDir, "21660.jsp"), "D-cup solid ruched bandeau tank",
                "http://www.jcrew.com/womens_special_sizes/specialswimsizes/Dcup/PRDOVR~21660/21660.jsp");

        pageTest(new File(testDir, "16851.jsp"), "Italian wool pinstripe suit vest",
                "http://www.jcrew.com/mens_special_shops/catalogjcrewcomexclusives/suiting/PRDOVR~16851/16851.jsp");

        pageTest(new File(testDir, "63050.jsp"), "Silk tricotine Sophia gown",
                "http://www.jcrew.com/wedding/womens/w_bridesmaids/PRDOVR~63050/63050.jsp");

        pageTest(new File(testDir, "16564.jsp"),
                "Italian wool Aldridge two-button suit jacket with center vent",
                "http://www.jcrew.com/mens_special_shops/themonogramshop/suiting/PRDOVR~16564/16564.jsp");

        pageTest(
                new File(testDir, "16561.jsp"),
                "Italian wool Ludlow suit pant",
                "http://www.jcrew.com/mens_category/suitinganddressshirts/italianwoolsuiting/PRDOVR~16561/16561.jsp");

        pageTest(new File(testDir, "31206.jsp"), "Slim Secret Wash point-collar solid shirt",
                "http://www.jcrew.com/mens_feature/spotlightslimfit/PRDOVR~31206/31206.jsp");

        // This is a sold out item, good test case
	//        pageTest(new File(testDir, "35656.jsp"), "Authier� camouflage ripstop vest",
	//                "http://www.jcrew.com/womens_category/outerwear/ingoodcompany/PRDOVR~35656/35656.jsp");

        pageTest(new File(testDir, "11922.jsp"), "Silk taffeta Lorelei dress",
                "http://www.jcrew.com/wedding/womens/w_bridesmaids/PRDOVR~11922/11922.jsp");

        pageTest(new File(testDir, "86013.jsp"), "High pencil skirt in super 120s",
                "http://www.jcrew.com/womens_category/skirts/pencil/PRDOVR~86013/86013.jsp");

        pageTest(new File(testDir, "16854.jsp"),
                "Italian wool pinstripe Ludlow three-button suit jacket with center vent",
                "http://www.jcrew.com/mens_special_shops/catalogjcrewcomexclusives/suiting/PRDOVR~16854/16854.jsp");

        pageTest(new File(testDir, "88041.jsp"), "Sterling-silver tie clip",
                "http://www.jcrew.com/mens_feature/weartoworkshop/accessorieswork/PRDOVR~88041/88041.jsp");

        // Another sold out item
	//        pageTest(new File(testDir, "35657.jsp"), "Authier� camouflage puffer jacket",
	//                "http://www.jcrew.com/womens_category/outerwear/ingoodcompany/PRDOVR~35657/35657.jsp");

        pageTest(new File(testDir, "90795.jsp"), "Pinstripe high pencil skirt in super 120s",
                "http://www.jcrew.com/womens_special_sizes/size16/skirts/PRDOVR~90795/90795.jsp");

        pageTest(new File(testDir, "16564.jsp"),
                "Italian wool Aldridge two-button suit jacket with center vent",
                "http://www.jcrew.com/wedding/Wedding_Groom_Groomsmen/suits/PRDOVR~16564/16564.jsp");

        pageTest(new File(testDir, "17657.jsp"), "Tall solid pinpoint oxford shirt",
                "http://www.jcrew.com/mens_special_sizes/tall/shirts/PRDOVR~17657/17657.jsp");

        pageTest(new File(testDir, "10867.jsp"), "Tall dreamy cotton pant",
                "http://www.jcrew.com/womens_special_sizes/tall/jcrewweekendandsleepwear/PRDOVR~10867/10867.jsp");

        pageTest(new File(testDir, "10730.jsp"), "D-cup solid twist-front bandeau tank",
                "http://www.jcrew.com/womens_special_shops/themonogramshop/swim/PRDOVR~10730/10730.jsp");

        pageTest(
                new File(testDir, "14990.jsp"),
                "Italian chino Aldridge three-button suit jacket with center vent",
                "http://www.jcrew.com/mens_category/suitinganddressshirts/italianchinoAldridgesuiting/PRDOVR~14990/14990.jsp");

        pageTest(
                new File(testDir, "21350.jsp"),
                "Italian chino Ludlow two-button suit jacket with center vent",
                "http://www.jcrew.com/mens_category/suitinganddressshirts/italianchinosuiting/PRDOVR~21350/21350.jsp");

        pageTest(
                new File(testDir, "16564.jsp"),
                "Italian wool Aldridge two-button suit jacket with center vent",
                "http://www.jcrew.com/mens_category/suitinganddressshirts/italianwoolAldridgesuiting/PRDOVR~16564/16564.jsp");

        pageTest(new File(testDir, "16562.jsp"), "Italian wool Aldridge suit pant",
                "http://www.jcrew.com/mens_feature/weartoworkshop/suiting/PRDOVR~16562/16562.jsp");

        pageTest(new File(testDir, "88041.jsp"), "Sterling-silver tie clip",
                "http://www.jcrew.com/wedding/Wedding_Groom_Groomsmen/furnishings/PRDOVR~88041/88041.jsp");

        pageTest(new File(testDir, "90795.jsp"), "Pinstripe high pencil skirt in super 120s",
                "http://www.jcrew.com/womens_category/suiting/super120spinstripe/PRDOVR~90795/90795.jsp");

        pageTest(new File(testDir, "78463.jsp"),
                "Tall Secret Wash button-down end-on-end shirt in waterfall",
                "http://www.jcrew.com/mens_special_sizes/tall/shirts/PRDOVR~78463/78463.jsp");

        pageTest(new File(testDir, "16565.jsp"),
                "Italian wool Aldridge three-button suit jacket with center vent",
                "http://www.jcrew.com/mens_special_sizes/tall/suits/PRDOVR~16565/16565.jsp");

        pageTest(new File(testDir, "16854.jsp"),
                "Italian wool pinstripe Ludlow three-button suit jacket with center vent",
                "http://www.jcrew.com/mens_category/sportcoatsandvests/suiting/PRDOVR~16854/16854.jsp");

        pageTest(new File(testDir, "41566.jsp"), "Petite silk chiffon Taryn long dress",
                "http://www.jcrew.com/womens_special_sizes/petite/dresses/PRDOVR~41566/41566.jsp");

        pageTest(new File(testDir, "16852.jsp"), "Italian wool pinstripe Ludlow suit pant",
                "http://www.jcrew.com/mens_category/pants/suitpants/PRDOVR~16852/16852.jsp");

        pageTest(new File(testDir, "85984.jsp"), "Cashmere V-neck sweater",
                "http://www.jcrew.com/mens_special_shops/JCrewcashmere/sweaters/PRDOVR~85984/85984.jsp");

        pageTest(new File(testDir, "10129.jsp"), "Dreamy cotton pant",
                "http://www.jcrew.com/womens_category/sleepwear/PRDOVR~10129/10129.jsp");

        pageTest(new File(testDir, "97904.jsp"), "Point-collar regular-fit dress shirt in white",
                "http://www.jcrew.com/mens_category/suitinganddressshirts/dressshirts/PRDOVR~97904/97904.jsp");

        pageTest(new File(testDir, "96037.jsp"), "Wool university coat",
                "http://www.jcrew.com/mens_category/outerwear/wool/PRDOVR~96037/96037.jsp");

        pageTest(new File(testDir, "10230.jsp"), "Solid twist-front bandeau tank",
                "http://www.jcrew.com/womens_special_sizes/specialswimsizes/padded/PRDOVR~10230/10230.jsp");

        pageTest(new File(testDir, "31205.jsp"),
                "Slim Secret Wash button-down shirt in faded gingham",
                "http://www.jcrew.com/mens_feature/spotlightslimfit/PRDOVR~31205/31205.jsp");

        pageTest(
                new File(testDir, "14959.jsp"),
                "Italian chino Aldridge two-button suit jacket with center vent",
                "http://www.jcrew.com/mens_category/suitinganddressshirts/italianchinoAldridgesuiting/PRDOVR~14959/14959.jsp");

        pageTest(new File(testDir, "32662.jsp"), "Slim sunwashed flannel shirt in Lancaster plaid",
                "http://www.jcrew.com/mens_feature/spotlightslimfit/PRDOVR~32662/32662.jsp");

        pageTest(new File(testDir, "18192.jsp"), "Tall matchstick jean in dark rinse wash",
                "http://www.jcrew.com/womens_special_sizes/tall/denim/PRDOVR~18192/18192.jsp");

        pageTest(new File(testDir, "29254.jsp"), "Tall bootcut jean in classic rinse wash",
                "http://www.jcrew.com/womens_special_sizes/tall/pants/PRDOVR~29254/29254.jsp");

        pageTest(new File(testDir, "36344.jsp"),
                "Slim Secret Wash lightweight button-down shirt in Van Buren gingham",
                "http://www.jcrew.com/mens_feature/spotlightslimfit/PRDOVR~36344/36344.jsp");

        pageTest(new File(testDir, "87195.jsp"), "Authentic peacoat",
                "http://www.jcrew.com/mens_category/outerwear/wool/PRDOVR~87195/87195.jsp");

        pageTest(new File(testDir, "97893.jsp"), "Silk chiffon Juliet dress",
                "http://www.jcrew.com/wedding/womens/w_bridesmaids/PRDOVR~97893/97893.jsp");


        // Tell us how many test cases are there?
        System.out.println();
        System.out.println("total test cases for JCrewParser: " + num);
    }

    public void pageTest(File file, String productName, String url) throws Exception {

        String contentType = "text/html";
        InputStream in = new FileInputStream(file);
        ByteArrayOutputStream out = new ByteArrayOutputStream((int) file.length());
        byte[] buffer = new byte[1024];
        int i;
        while ((i = in.read(buffer)) != -1) {
            out.write(buffer, 0, i);
        }
        in.close();
        byte[] bytes = out.toByteArray();
        Configuration conf = NutchConfiguration.create();

        // This is a test case, make sure we don't mess up with main database
        // set the database to junkdb
        conf.set(WatchListConfig.JDBC_URL.getAttributeString(), "jdbc:mysql://localhost:3306/junkdb");

        Content content = new Content(url, url, bytes, contentType, new Metadata(), conf);
        Parse parse = new ParseUtil(conf).parseByExtensionId("parse-html", content).get(url);

        Metadata metadata = parse.getData().getContentMeta();
        assertEquals(productName, metadata.get(JCrewParser.META_PRODUCT_TITLE));
        float price = Float.parseFloat(metadata.get(JCrewParser.META_PRICE));
        assertTrue(price > 0);
        assertTrue(metadata.get(JCrewParser.META_IMG_URL).length() > 10);

        // Indicate progress
        System.out.print('.');
        num++;
    }
}
