
icing_grow_ice= func {
    if (getprop("/environment/icing/watter-will-froze")==1) {
        setprop("/surface/ice/wings-sec-A",getprop("/surface/ice/wings-sec-A") + 
            getprop("/environment/icing/watteramount") * 0.0006 );
        setprop("/surface/ice/wings-sec-B",getprop("/surface/ice/wings-sec-B") + 
            getprop("/environment/icing/watteramount") * 0.0006 );
        setprop("/surface/ice/tail-wing",getprop("/surface/ice/tail-wing") + 
            getprop("/environment/icing/watteramount") * 0.0006 );

        setprop("/surface/ice/pressure-static1",getprop("/surface/ice/pressure-static1") + 
            getprop("/environment/icing/watteramount")*0.000017);
        if (getprop("/surface/ice/pressure-static1") > 3) { setprop("/surface/ice/pressure-static1",3); }
        setprop("/surface/ice/pressure-static2",getprop("/surface/ice/pressure-static2") + 
            getprop("/environment/icing/watteramount")*0.000017);
        if (getprop("/surface/ice/pressure-static2") > 3) { setprop("/surface/ice/pressure-static2",3); }
        setprop("/surface/ice/pressure-pitot1",getprop("/surface/ice/pressure-pitot1") + 
            getprop("/environment/icing/watteramount") * 0.00002);
        if (getprop("/surface/ice/pressure-pitot1") > 5) { setprop("/surface/ice/pressure-pitot1",5); }
        setprop("/surface/ice/pressure-pitot2",getprop("/surface/ice/pressure-pitot2") + 
            getprop("/environment/icing/watteramount") * 0.00002);
        if (getprop("/surface/ice/pressure-pitot2") > 5) { setprop("/surface/ice/pressure-pitot2",5); }

        setprop("/surface/ice/wind-shield-lh",getprop("/surface/ice/wind-shield-lh") + 
            getprop("/environment/icing/watteramount") * 0.00003);
        if (getprop("/surface/ice/wind-shield-lh") > 2) { setprop("/surface/ice/wind-shield-lh",2); }
        setprop("/surface/ice/wind-shield-rh",getprop("/surface/ice/wind-shield-rh") + 
            getprop("/environment/icing/watteramount") * 0.00003);
        if (getprop("/surface/ice/wind-shield-rh") > 2) { setprop("/surface/ice/wind-shield-rh",2); }
        setprop("/surface/ice/wind-shield-rear",getprop("/surface/ice/wind-shield-rear") + 
            getprop("/environment/icing/watteramount") * 0.000015);
        if (getprop("/surface/ice/wind-shield-rear") > 2) { setprop("/surface/ice/wind-shield-rear",2); }


        setprop("/surface/ice/ice-detector",getprop("/surface/ice/ice-detector") + 
            getprop("/environment/icing/watteramount") * 0.00005);
        if (getprop("/surface/ice/ice-detector") > 0.2) { setprop("/surface/ice/ice-detector",0.2); }

        setprop("/surface/ice/static-ice-detector",getprop("/surface/ice/static-ice-detector") + 
            getprop("/environment/icing/watteramount") * 0.00005);
        if (getprop("/surface/ice/static-ice-detector") > 2) { setprop("/surface/ice/static-ice-detector",2); }

    } else {
        if (getprop("/environment/icing/aircraft-surface-temp-degc") > 0) {
            setprop("/surface/ice/wings-sec-A",getprop("/surface/ice/wings-sec-A") - 
                getprop("/environment/icing/aircraft-surface-temp-degc") * 0.02);
            if (getprop("/surface/ice/wings-sec-A")<0) { setprop("/surface/ice/wings-sec-A",0); }
            setprop("/surface/ice/wings-sec-B",getprop("/surface/ice/wings-sec-B") - 
                getprop("/environment/icing/aircraft-surface-temp-degc") * 0.02);
            if (getprop("/surface/ice/wings-sec-B")<0) { setprop("/surface/ice/wings-sec-B",0); }
            setprop("/surface/ice/tail-wing",getprop("/surface/ice/tail-wing") - 
                getprop("/environment/icing/aircraft-surface-temp-degc") * 0.02);
            if (getprop("/surface/ice/tail-wing")<0) { setprop("/surface/ice/tail-wing",0); }
    
            setprop("/surface/ice/pressure-static1",getprop("/surface/ice/pressure-static1") - 
                getprop("/environment/icing/aircraft-surface-temp-degc")*0.0006);
            if (getprop("/surface/ice/pressure-static1")<0) { setprop("/surface/ice/pressure-static1",0); }
            setprop("/surface/ice/pressure-static2",getprop("/surface/ice/pressure-static2") - 
                getprop("/environment/icing/aircraft-surface-temp-degc")*0.0006);
            if (getprop("/surface/ice/pressure-static2")<0) { setprop("/surface/ice/pressure-static2",0); }
            setprop("/surface/ice/pressure-pitot1",getprop("/surface/ice/pressure-pitot1") - 
                getprop("/environment/icing/aircraft-surface-temp-degc") * 0.0006);
            if (getprop("/surface/ice/pressure-pitot1")<0) { setprop("/surface/ice/pressure-pitot1",0); }
            setprop("/surface/ice/pressure-pitot2",getprop("/surface/ice/pressure-pitot2") - 
                getprop("/environment/icing/aircraft-surface-temp-degc") * 0.0006);
            if (getprop("/surface/ice/pressure-pitot2")<0) { setprop("/surface/ice/pressure-pitot2",0); }

            setprop("/surface/ice/wind-shield-lh",getprop("/surface/ice/wind-shield-lh") - 
                getprop("/environment/icing/aircraft-surface-temp-degc") * 0.0002);
            if (getprop("/surface/ice/wind-shield-lh")<0) { setprop("/surface/ice/wind-shield-lh",0); }
            setprop("/surface/ice/wind-shield-rh",getprop("/surface/ice/wind-shield-rh") - 
                getprop("/environment/icing/aircraft-surface-temp-degc") * 0.0002);
            if (getprop("/surface/ice/wind-shield-rh")<0) { setprop("/surface/ice/wind-shield-rh",0); }
            setprop("/surface/ice/wind-shield-rear",getprop("/surface/ice/wind-shield-rear") - 
                getprop("/environment/icing/aircraft-surface-temp-degc") * 0.0002);
            if (getprop("/surface/ice/wind-shield-rear")<0) { setprop("/surface/ice/wind-shield-rear",0); }

            setprop("/surface/ice/static-ice-detector",getprop("/surface/ice/static-ice-detector") - 
                getprop("/environment/icing/aircraft-surface-temp-degc") * 0.0012);
            if (getprop("/surface/ice/static-ice-detector")<0) { setprop("/surface/ice/static-ice-detector",0); }
        }
        setprop("/surface/ice/ice-detector",getprop("/surface/ice/ice-detector") - 
            getprop("/environment/icing/aircraft-surface-temp-degc") * 0.001);
        if (getprop("/surface/ice/ice-detector")<0) { setprop("/surface/ice/ice-detector",0); }
        
    }

    if (getprop("/environment/icing/watteramount") < 0.01) {
        setprop("/surface/ice/ice-detector",getprop("/surface/ice/ice-detector") - 0.0008);
        if (getprop("/surface/ice/ice-detector")<0) { setprop("/surface/ice/ice-detector",0); }
    }
    
    
    setprop("/consumables/fuel/tank[2]/level-gal_us",getprop("/surface/ice/wings-sec-A")/2/3.3);
    setprop("/consumables/fuel/tank[3]/level-gal_us",getprop("/surface/ice/wings-sec-A")/2/3.3);
    setprop("/consumables/fuel/tank[4]/level-gal_us",getprop("/surface/ice/wings-sec-B")/2/3.3);
    setprop("/consumables/fuel/tank[5]/level-gal_us",getprop("/surface/ice/wings-sec-B")/2/3.3);
    setprop("/consumables/fuel/tank[6]/level-gal_us",getprop("/surface/ice/tail-wing")/3.3);
}

icing_set_instruments = func {

    #Warning bulb "icing"
    
    if (getprop("/surface/ice/ice-detector")>0.08) {
        if (getprop("/systems/electrical/outputs/ice-detect-rotary") > 10) {
            setprop("/instrumentation/warn-disp/wd-icing",1);
        } else {
            setprop("/instrumentation/warn-disp/wd-icing",0);
        }
    } else {
        setprop("/instrumentation/warn-disp/wd-icing",0);
    }
    
    #pitots serviceable
    
    if (getprop("/surface/ice/pressure-pitot2")>0.75) {
        #pitot 2 out of order
        setprop("/systems/pitot[1]/serviceable",0);
    } else {
        setprop("/systems/pitot[1]/serviceable",1);
    }
    if (getprop("/surface/ice/pressure-pitot1")>0.75) {
        #pitot 1 out of order
        if (getprop("/controls/switches/pitot-selector-sw")==0) {
            setprop("/systems/pitot[0]/serviceable",0);
        } else {
            setprop("/systems/pitot[0]/serviceable",getprop("/systems/pitot[1]/serviceable"));
            if (getprop("/systems/pitot[1]/serviceable")==0) {
                setprop("/systems/pitot[0]/total-pressure-inhg",getprop("/systems/pitot[1]/total-pressure-inhg"));
            }
        }
    } else {
        if (getprop("/controls/switches/pitot-selector-sw")==0) {
            setprop("/systems/pitot[0]/serviceable",1);
        } else {
            setprop("/systems/pitot[0]/serviceable",getprop("/systems/pitot[1]/serviceable"));
            if (getprop("/systems/pitot[1]/serviceable")==0) {
                setprop("/systems/pitot[0]/total-pressure-inhg",getprop("/systems/pitot[1]/total-pressure-inhg"));
            }
        }
    }
    
    #static serviceable
    if (getprop("/surface/ice/pressure-static1")>0.75 and 
        getprop("/surface/ice/pressure-static2")>0.75 and
        getprop("/controls/switches/static-emergency-sw")==0)
    {
        setprop("/systems/static[0]/serviceable",0);
    } else {
        setprop("/systems/static[0]/serviceable",1);
    }
    
}

icing_check_conditions = func {

    notincloud = 1;
    watteramount = 0;

    for (i=0 ; i<5 ; i=i+1 ) {
        #test if we are in
        #print ("/environment/clouds/layer["~i~"]/elevation-ft");
        base = getprop("/environment/clouds/layer["~i~"]/elevation-ft");
        if (base > 10) {
            thickness = getprop("/environment/clouds/layer["~i~"]/thickness-ft") / 2;
            middle = base + thickness ;
            ouralt = getprop("/position/altitude-ft");
            transition = getprop("/environment/clouds/layer["~i~"]/transition-ft");
            minalt = base - transition;
            maxalt = base + thickness*2 + transition;
            
            watteramount = 0;
            if (ouralt > minalt and ouralt < maxalt) {
                watteramount = 1 - (abs (ouralt - middle) / thickness) * 0.25;
                setprop("/environment/icing/watteramount-coef",watteramount);
                if (watteramount < 0.75) {
                    if (ouralt < middle) {
                        watteramount = 0.75 - (abs (ouralt - (middle - thickness)) / transition) * 0.75;
                    } else {
                        watteramount = 0.75 - (abs (ouralt - (middle + thickness)) / transition) * 0.75;
                    }
                }
                if (getprop("/environment/clouds/layer["~i~"]/coverage")=="clear") { watteramount = 0;}
                if (getprop("/environment/clouds/layer["~i~"]/coverage")=="cirrus") { watteramount = watteramount * 20;}
                if (getprop("/environment/clouds/layer["~i~"]/coverage")=="few") { watteramount = watteramount * 40;}
                if (getprop("/environment/clouds/layer["~i~"]/coverage")=="scattered") { watteramount = watteramount * 80;}
                if (getprop("/environment/clouds/layer["~i~"]/coverage")=="broken") { watteramount = watteramount * 160;}
                if (getprop("/environment/clouds/layer["~i~"]/coverage")=="overcast") { watteramount = watteramount * 320;}
                # wattermamount is now in kg of ice per hour

                setprop("/environment/icing/watteramount",watteramount);
                notincloud = 0;
            }
            
        }
    }
    
    if (notincloud == 1) {
        visibility = getprop("/environment/visibility-m");
        if (visibility < 3000) {
            watteramount = (1 - (visibility / 3000)) * 40;
        }
        setprop("/environment/icing/watteramount",watteramount);
    }

    #if (getprop("/environment/icing/watteramount") > 0) {
        #we have watter in air, check if it could froze
        #if there is no watter and it freeze, the ice will not be removed
        airtemp = getprop("/environment/temperature-degc");
        surfacetemp = getprop("/environment/icing/aircraft-surface-temp-degc");
        
        #on very low temperature, there is only ice in the air and therefore is there nothing to froze
        if (airtemp < -12) { setprop("/environment/icing/watteramount",0); }
        
        if (surfacetemp < 0 or (airtemp < -surfacetemp * 0.2)) {
            #watter will froze
            setprop("/environment/icing/watter-will-froze",1);
        } else {
            setprop("/environment/icing/watter-will-froze",0);
        }
    #}
    
    #update aircraft surface temp:
  goal=getprop("/environment/temperature-degc");
  base=getprop("/environment/icing/aircraft-surface-temp-degc");
    humidity_coef = watteramount * 0.05;
  setprop("/environment/icing/aircraft-surface-temp-degc",
        l410basic.check_basic_diff(base,goal,0.2+humidity_coef,-0.15-humidity_coef/2));

    icing_grow_ice();
    icing_set_instruments();

    settimer(icing_check_conditions,1);
}

setprop("/environment/icing/aircraft-surface-temp-degc",getprop("/environment/temperature-degc"));

#no ice at begining
setprop("/surface/ice/wings-sec-A",0);
setprop("/surface/ice/wings-sec-B",0);
setprop("/surface/ice/tail-wing",0);
setprop("/surface/ice/pressure-static1",0);
setprop("/surface/ice/pressure-static2",0);
setprop("/surface/ice/pressure-pitot1",0);
setprop("/surface/ice/pressure-pitot2",0);
setprop("/surface/ice/ice-detector",0);
setprop("/surface/ice/wind-shield-lh",0);
setprop("/surface/ice/wind-shield-rh",0);
setprop("/surface/ice/wind-shield-rear",0);
setprop("/surface/ice/static-ice-detector",0);

settimer(icing_check_conditions,10);


# DEICING ##########################################################

deicing_bulbs = func {
    bulb_a = 0; bulb_b = 0; bulb_c = 0;
    if (getprop("/systems/electrical/outputs/deicing-airframe")>10) {
    
        # bulb tests
        if (getprop("/instrumentation/deicing/sw-bulbs-test") == 1) { bulb_a = 1; bulb_b = 1; bulb_c = 1;}
        
        # section selected
        if (getprop("/instrumentation/deicing/sw-auto-man")==0 and getprop("/systems/health/deicing-automat-ok")==1) {
            if (getprop("/instrumentation/deicing/auto-section-selected") == 1) { bulb_a = 1; }
            if (getprop("/instrumentation/deicing/auto-section-selected") == 3) { bulb_b = 1; }
            if (getprop("/instrumentation/deicing/auto-section-selected") == 5) { bulb_c = 1; }
        }
        if (getprop("/instrumentation/deicing/sw-auto-man")==1) {
            if (getprop("/instrumentation/deicing/auto-section-selected") == 1) { bulb_a = 1; }
            if (getprop("/instrumentation/deicing/auto-section-selected") == 3) { bulb_b = 1; }
            if (getprop("/instrumentation/deicing/auto-section-selected") == 5) { bulb_c = 1; }
        }
    }
    setprop("/instrumentation/deicing/bulb_section_a",bulb_a);
    setprop("/instrumentation/deicing/bulb_section_b",bulb_b);
    setprop("/instrumentation/deicing/bulb_section_c",bulb_c);
}

deicing_pitot_static = func {
    if (getprop("/systems/electrical/outputs/deicing-pitot1") > 20) {
        setprop("/surface/ice/pressure-pitot1",getprop("/surface/ice/pressure-pitot1") - 0.0025); 
    }
    if (getprop("/surface/ice/pressure-pitot1")<0) { setprop("/surface/ice/pressure-pitot1",0); }
    if (getprop("/systems/electrical/outputs/deicing-pitot2") > 20) {
        setprop("/surface/ice/pressure-pitot2",getprop("/surface/ice/pressure-pitot2") - 0.0025); 
    }
    if (getprop("/surface/ice/pressure-pitot2")<0) { setprop("/surface/ice/pressure-pitot2",0); }

    if (getprop("/systems/electrical/outputs/deicing-static1") > 20) {
        setprop("/surface/ice/pressure-static1",getprop("/surface/ice/pressure-static1") - 0.0025); 
    }
    if (getprop("/surface/ice/pressure-static1")<0) { setprop("/surface/ice/pressure-static1",0); }
    if (getprop("/systems/electrical/outputs/deicing-static2") > 20) {
        setprop("/surface/ice/pressure-static2",getprop("/surface/ice/pressure-static2") - 0.0025); 
    }
    if (getprop("/surface/ice/pressure-static2")<0) { setprop("/surface/ice/pressure-static2",0); }
}

deicing_wind_shield = func {
    const = getprop("/instrumentation/deicing/sw-ws_heat");
    lh_bulb = 0;
    if (getprop("/systems/electrical/outputs/deicing-ws-heating-lh") > 100) {
        setprop("/surface/ice/wind-shield-lh",getprop("/surface/ice/wind-shield-lh") - (0.0015*const)); 
        if (getprop("/surface/ice/wind-shield-lh") < 0) { setprop("/surface/ice/wind-shield-lh",0); }
        if (const>0) { lh_bulb=1; }
    }
    if (getprop("/instrumentation/deicing/sw-ws_heat-test-lh")>0 and getprop("/systems/health/windshiled-lh-thermo-ok")==1) { lh_bulb = 0; }
    setprop("/instrumentation/warn-disp/wd-windshield-heat-lh",lh_bulb);
    
    rh_bulb=0;
    if (getprop("/systems/electrical/outputs/deicing-ws-heating-rh") > 100) {
        setprop("/surface/ice/wind-shield-rh",getprop("/surface/ice/wind-shield-rh") - (0.0015*const)); 
        if (getprop("/surface/ice/wind-shield-rh") < 0) { setprop("/surface/ice/wind-shield-rh",0); }
        if (const>0) { rh_bulb=1; }
    }
    if (getprop("/instrumentation/deicing/sw-ws_heat-test-rh")>0 and getprop("/systems/health/windshiled-rh-thermo-ok")==1) { rh_bulb = 0; }
    setprop("/instrumentation/warn-disp/wd-windshield-heat-rh",rh_bulb);

    coef = getprop("/instrumentation/temperature/windshield-flow") * getprop("/instrumentation/temperature/heating-temp-degc");
    if (coef<0) { coef=0; }
    setprop("/surface/ice/wind-shield-rear",getprop("/surface/ice/wind-shield-rear") - coef * 0.00005);
    if (getprop("/surface/ice/wind-shield-rear") < 0) { setprop("/surface/ice/wind-shield-rear",0); }
    
}

deicing_static_detector = func {
    if (getprop("/systems/electrical/outputs/ice-detect-static")>20) {
        setprop("/surface/ice/static-ice-detector",getprop("/surface/ice/static-ice-detector") - 0.0025); 
        if (getprop("/surface/ice/static-ice-detector")<0) { setprop("/surface/ice/static-ice-detector",0); }
    }
}

deicing_main_loop = func {
    deicing_bulbs();
    deicing_pitot_static();
    deicing_wind_shield();
    deicing_static_detector();
    settimer(deicing_main_loop,0.2);
}

deicing_pressure_up = 1;
ice_removed_in_this_step = 0;

remove_ice_from_airframe = func {
    base = 0;
    if (getprop("/instrumentation/deicing/auto-section-selected") == 1) { base = getprop("/surface/ice/wings-sec-A"); }
    if (getprop("/instrumentation/deicing/auto-section-selected") == 3) { base = getprop("/surface/ice/wings-sec-B"); }
    if (getprop("/instrumentation/deicing/auto-section-selected") == 5) { base = getprop("/surface/ice/tail-wing"); }

    remove_pct = rand() * 0.2 + 0.1; #10% will remain in every case, 70% will be removed in worst case
    goal = base * remove_pct;
    
    if (getprop("/instrumentation/deicing/auto-section-selected") == 1) { setprop("/surface/ice/wings-sec-A",goal); }
    if (getprop("/instrumentation/deicing/auto-section-selected") == 3) { setprop("/surface/ice/wings-sec-B",goal); }
    if (getprop("/instrumentation/deicing/auto-section-selected") == 5) { setprop("/surface/ice/tail-wing",goal); }
}

deicing_timer = func {
    if (getprop("/instrumentation/deicing/auto-section-selected") == 0) { setprop("/instrumentation/deicing/auto-section-selected",1); }
  max_needle_speed = 30;

    if (getprop("/instrumentation/deicing/sw-auto-man")==1 and getprop("/instrumentation/deicing/deicers-pressure")<0.1) {
        if (getprop("/instrumentation/deicing/sw-section-ac")==1) {
            setprop("/instrumentation/deicing/auto-section-selected",1);deicing_pressure_up = 1; }
        if (getprop("/instrumentation/deicing/sw-section-b")==1) {
            setprop("/instrumentation/deicing/auto-section-selected",3);deicing_pressure_up = 1; }
        if (getprop("/instrumentation/deicing/sw-section-ac")==2) {
            setprop("/instrumentation/deicing/auto-section-selected",5);deicing_pressure_up = 1; }
    }
    #if (getprop("/instrumentation/deicing/auto-section-selected") == 0 or
    #    getprop("/instrumentation/deicing/auto-section-selected") == 2 or
    #    getprop("/instrumentation/deicing/auto-section-selected") == 4 or
    #    getprop("/instrumentation/deicing/auto-section-selected") == 6) { deicing_pressure_up = 2; }

    if (getprop("/systems/electrical/outputs/deicing-airframe")>10) {
        if ((getprop("/instrumentation/deicing/sw-auto-man")==0 and getprop("/systems/health/deicing-automat-ok")==1) or
            (getprop("/instrumentation/deicing/sw-auto-man")==1 and (
                getprop("/instrumentation/deicing/sw-section-ac")==1 or
                getprop("/instrumentation/deicing/sw-section-b")==1 or
                getprop("/instrumentation/deicing/sw-section-ac")==2
            ))) 
        {
            base = getprop("/instrumentation/deicing/deicers-pressure");
            goal = 0;
            if (deicing_pressure_up == 1 and (
                getprop("/engines/engine[0]/running")==1 or getprop("/engines/engine[1]/running")==1
                )) 
            {
                goal = 1.7
            }
            setprop("/instrumentation/deicing/deicers-pressure",l410basic.check_basic_diff(base,goal,0.15,-0.25));
            
            if (getprop("/instrumentation/deicing/sw-auto-man")==0 and getprop("/systems/health/deicing-automat-ok")==1) {
                if (getprop("/instrumentation/deicing/deicers-pressure")>1.6 and deicing_pressure_up == 1) {
                    deicing_pressure_up = 2;
                }
                if (getprop("/instrumentation/deicing/deicers-pressure")<0.1 and deicing_pressure_up >= 2) {
                    curr_section = getprop("/instrumentation/deicing/auto-section-selected");
                    if (deicing_pressure_up == 2) {
                        setprop("/instrumentation/deicing/auto-section-selected",curr_section+1);
                    }
                    deicing_pressure_up = deicing_pressure_up + 1;
                    test_time = 1400;
                    if (getprop("/instrumentation/deicing/sw-slow-fast")==1) { test_time = 390; }
                    if (curr_section==2) { test_time = 10; }
                    if (curr_section==4) { test_time = 10; }
                    setprop("/instrumentation/deicing/aaaa",test_time);
                    if (deicing_pressure_up > test_time) {
                        deicing_pressure_up = 1;
                        if (curr_section >= 6) { curr_section = 0; }
                        setprop("/instrumentation/deicing/auto-section-selected",curr_section+1);
                    }
                }
            }
        } else {
            if (getprop("/instrumentation/deicing/auto-section-selected") == 1 or
                getprop("/instrumentation/deicing/auto-section-selected") == 3 or
                getprop("/instrumentation/deicing/auto-section-selected") == 5
            ) { setprop("/instrumentation/deicing/auto-section-selected",getprop("/instrumentation/deicing/auto-section-selected")+1);}
            if (getprop("/instrumentation/deicing/auto-section-selected") > 6 ) {           
                setprop("/instrumentation/deicing/auto-section-selected",1);}
            deicing_pressure_up = 3;
            base = getprop("/instrumentation/deicing/deicers-pressure");
            goal = 0;
            setprop("/instrumentation/deicing/deicers-pressure",l410basic.check_basic_diff(base,goal,0.1,-0.2));
        }
    } else {
        #if (getprop("/instrumentation/deicing/auto-section-selected") == 1 or
        #    getprop("/instrumentation/deicing/auto-section-selected") == 3 or
        #    getprop("/instrumentation/deicing/auto-section-selected") == 5
        #) { setprop("/instrumentation/deicing/auto-section-selected",getprop("/instrumentation/deicing/auto-section-selected")+1);}
        #deicing_pressure_up = 2;
        base = getprop("/instrumentation/deicing/deicers-pressure");
        goal = 0;
        setprop("/instrumentation/deicing/deicers-pressure",l410basic.check_basic_diff(base,goal,0.1,-0.2));
    }
    if (getprop("/instrumentation/deicing/deicers-pressure")<0.1) {
        ice_removed_in_this_step = 0;
    }
    if (getprop("/instrumentation/deicing/deicers-pressure")>1.5 and ice_removed_in_this_step==0) {
        remove_ice_from_airframe();
        ice_removed_in_this_step = 1;
    }

  goal=getprop("/instrumentation/deicing/deicers-pressure");
  base=getprop("/instrumentation/deicing/indicated-deicers-pressure");
  setprop("/instrumentation/deicing/indicated-deicers-pressure",
        l410basic.check_basic_diff(base,goal,max_needle_speed,-max_needle_speed));

    settimer(deicing_timer,0.1);
}

deicing_switches = func {
    if (getprop("/instrumentation/deicing/swv-stall_probe")>0) { 
        setprop("/instrumentation/deicing/sw-stall_probe",1);
        if (getprop("/systems/electrical/outputs/deicing-stall")>20) { setprop("/instrumentation/deicing/swv-stall_probe",2); }
        else { setprop("/instrumentation/deicing/swv-stall_probe",1); }
    } else { setprop("/instrumentation/deicing/sw-stall_probe",0); }

    if (getprop("/instrumentation/deicing/swv-static_heads1")>0) { 
        setprop("/instrumentation/deicing/sw-static_heads1",1);
        if (getprop("/systems/electrical/outputs/deicing-static1")>20) { setprop("/instrumentation/deicing/swv-static_heads1",2); }
        else { setprop("/instrumentation/deicing/swv-static_heads1",1); }
    } else { setprop("/instrumentation/deicing/sw-static_heads1",0); }

    if (getprop("/instrumentation/deicing/swv-static_heads2")>0) { 
        setprop("/instrumentation/deicing/sw-static_heads2",1);
        if (getprop("/systems/electrical/outputs/deicing-static2")>20) { setprop("/instrumentation/deicing/swv-static_heads2",2); }
        else { setprop("/instrumentation/deicing/swv-static_heads2",1); }
    } else { setprop("/instrumentation/deicing/sw-static_heads2",0); }

    if (getprop("/instrumentation/deicing/swv-pitot_heads1")>0) { 
        setprop("/instrumentation/deicing/sw-pitot_heads1",1);
        if (getprop("/systems/electrical/outputs/deicing-pitot1")>20) { setprop("/instrumentation/deicing/swv-pitot_heads1",2); }
        else { setprop("/instrumentation/deicing/swv-pitot_heads1",1); }
    } else { setprop("/instrumentation/deicing/sw-pitot_heads1",0); }

    if (getprop("/instrumentation/deicing/swv-pitot_heads2")>0) { 
        setprop("/instrumentation/deicing/sw-pitot_heads2",1);
        if (getprop("/systems/electrical/outputs/deicing-pitot2")>20) { setprop("/instrumentation/deicing/swv-pitot_heads2",2); }
        else { setprop("/instrumentation/deicing/swv-pitot_heads2",1); }
    } else { setprop("/instrumentation/deicing/sw-pitot_heads2",0); }

    settimer(deicing_switches,0.05);
}

setprop("/instrumentation/deicing/sw-main",0);
setprop("/controls/switches/deicing-static-sw",0);

settimer(deicing_main_loop,10);
settimer(deicing_timer,10);
settimer(deicing_switches,10);
