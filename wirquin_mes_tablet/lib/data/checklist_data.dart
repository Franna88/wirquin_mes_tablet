import '../models/checklist_models.dart';

class ChecklistData {
  static List<ChecklistItem> getIMDailyItems() {
    return [
      ChecklistItem(
        id: 'im_d_1',
        description: 'Test E/STOP function',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'im_d_2',
        description: 'Grease mould pillars',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'im_d_3',
        description: 'Door stop functions in SEMI (TESTED)',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'im_d_4',
        description: 'Door stop functions in AUTO (TESTED)',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'im_d_5',
        description: 'Is the mechanical safety secure',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'im_d_6',
        description: 'Are the mould clamps secure',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'im_d_7',
        description: 'Are there any water leaks',
        example: 'NO',
      ),
      ChecklistItem(
        id: 'im_d_8',
        description: 'Are there any HYD oil leaks',
        example: 'NO',
      ),
      ChecklistItem(
        id: 'im_d_9',
        description: 'All the guards in place and secure',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'im_d_10',
        description: 'Housekeeping of area and machine',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'im_d_11',
        description: 'Actual HYD oil temp on screen',
        example: '41',
      ),
      ChecklistItem(
        id: 'im_d_12',
        description: 'Actual HYD oil temp on thermometer',
        example: '31',
      ),
      ChecklistItem(
        id: 'im_d_13',
        description: 'HYD oil set point',
        example: '30',
      ),
      ChecklistItem(
        id: 'im_d_14',
        description: 'HYD oil [+ve] over set point',
        example: '15',
      ),
      ChecklistItem(
        id: 'im_d_15',
        description: 'HYD oil [-ve] under set point',
        example: '25',
      ),
      ChecklistItem(
        id: 'im_d_16',
        description: 'Does the thermocouples and heaters work',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'im_d_17',
        description: 'Is the lube oil level correct',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'im_d_18',
        description: 'Is the hyd oil level correct',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'im_d_19',
        description: 'Is there water flow on the barrel',
        example: 'YES',
      ),
    ];
  }

  static List<ChecklistItem> getIMWeeklyItems() {
    return [
      ChecklistItem(
        id: 'im_w_1',
        description: 'Check lube lines for any damages',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'im_w_2',
        description: 'Clean water strainer on main line',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'im_w_3',
        description: 'Does the guard doors still close easy',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'im_w_4',
        description: 'Grease thrust bearings and slides',
        example: 'DONE',
      ),
    ];
  }

  static List<ChecklistItem> getIMMonthlyItems() {
    return [
      ...getIMDailyItems(),
      ChecklistItem(
        id: 'im_m_1',
        description: 'Check for loose wiring',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'im_m_2',
        description: 'Control on working pressure',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'im_m_3',
        description: 'Does the pressure gauge work',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'im_m_4',
        description: 'Clean panel fan filters',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'im_m_5',
        description: 'Does all the panel fans work',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'im_m_6',
        description: 'Oil sample for yearly required',
        example: 'NO',
      ),
    ];
  }

  static List<ChecklistItem> getIMQuarterlyItems() {
    return [
      ...getIMMonthlyItems(),
      ChecklistItem(
        id: 'im_q_1',
        description: 'Is the heaters and thermocouples secure',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'im_q_2',
        description: 'Check all the proxies are switching',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'im_q_3',
        description: 'Ensure nozzle alignment',
        example: 'GOOD',
      ),
    ];
  }

  static List<ChecklistItem> getIMSemiAnnualItems() {
    return [
      ...getIMQuarterlyItems(),
      ChecklistItem(
        id: 'im_sa_1',
        description: 'Check field wiring',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'im_sa_2',
        description: 'Check contactors and relays',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'im_sa_3',
        description: 'Check tie bar nuts secure',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'im_sa_4',
        description: 'Check machine level in spec',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'im_sa_5',
        description: 'Check and clean cooler',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'im_sa_6',
        description: 'Check hyd filter pressure',
        example: 'GREEN',
      ),
      ChecklistItem(
        id: 'im_sa_7',
        description: 'Drain HYD oil and clean tank',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'im_sa_8',
        description: 'Was the hydraulic oil reused',
        example: 'NO',
      ),
    ];
  }

  static List<ChecklistItem> getIMYearlyItems() {
    return [
      ...getIMSemiAnnualItems(),
      ChecklistItem(
        id: 'im_y_1',
        description: 'Check all bolts on machine is secure',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'im_y_2',
        description: 'Clean suction strainer/Replace if required',
        example: 'CLEANED',
      ),
      ChecklistItem(
        id: 'im_y_3',
        description: 'Clean breather filter',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'im_y_4',
        description: 'Check for bearing noise',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'im_y_5',
        description: 'Check platens Vertical and Horizontal',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'im_y_6',
        description: 'Ensure Lube setting according to chart',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'im_y_7',
        description: 'Blow out and clean servo Drive',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'im_y_8',
        description: 'Clean flow indicators',
        example: 'DONE',
      ),
    ];
  }

  // BT Checklists
  static List<ChecklistItem> getBTDailyItems() {
    return [
      ChecklistItem(
        id: 'bt_d_1',
        description: 'Test E/STOP function on machine',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'bt_d_2',
        description: 'Test E/STOP function on saw',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'bt_d_3',
        description: 'Test two hand operation (TESTED)',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'bt_d_4',
        description: 'Test two hand operation on saw (TESTED)',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'bt_d_5',
        description: 'Are the mould clamps secure',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'bt_d_6',
        description: 'Are there any water leaks',
        example: 'NO',
      ),
      ChecklistItem(
        id: 'bt_d_7',
        description: 'Are there any HYD oil leaks',
        example: 'NO',
      ),
      ChecklistItem(
        id: 'bt_d_8',
        description: 'Is the mould heater water level correct',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'bt_d_9',
        description: 'Is the HYD oil level correct',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'bt_d_10',
        description: 'Does the thermocouples and heaters work',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'bt_d_11',
        description: 'Saw guard is operational',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'bt_d_12',
        description: 'Saw clamps operational',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'bt_d_13',
        description: 'Does the door safeties work',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'bt_d_14',
        description: 'Are all the guards in place and secure',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'bt_d_15',
        description: 'Actual HYD oil temp on thermometer',
        example: '42',
      ),
      ChecklistItem(
        id: 'bt_d_16',
        description: 'Housekeeping of area and machine',
        example: 'GOOD',
      ),
    ];
  }

  static List<ChecklistItem> getBTWeeklyItems() {
    return [
      ChecklistItem(
        id: 'bt_w_1',
        description: 'Check for air leaks',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'bt_w_2',
        description: 'Clean mould surface',
        example: 'DONE',
      ),
    ];
  }

  static List<ChecklistItem> getBTMonthlyItems() {
    return [
      ...getBTDailyItems(),
      ChecklistItem(
        id: 'bt_m_1',
        description: 'Check HYD cylinder bolts',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'bt_m_2',
        description: 'Check panels for loose wiring',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'bt_m_3',
        description: 'Check saw v-belt',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'bt_m_4',
        description: 'Check for loose connections',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'bt_m_5',
        description: 'Oil sample for yearly required',
        example: 'NO',
      ),
    ];
  }

  static List<ChecklistItem> getBTQuarterlyItems() {
    return [
      ...getBTMonthlyItems(),
      ChecklistItem(
        id: 'bt_q_1',
        description: 'Grease and oil slides',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'bt_q_2',
        description: 'Check granulator blades',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'bt_q_3',
        description: 'Check for loose bolts on Granulator',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'bt_q_4',
        description: 'Check saw blade for wear',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'bt_q_5',
        description: 'Check gripper and nozzle alignment',
        example: 'GOOD',
      ),
    ];
  }

  static List<ChecklistItem> getBTSemiAnnualItems() {
    return [
      ...getBTQuarterlyItems(),
      ChecklistItem(
        id: 'bt_sa_1',
        description: 'Check and clean oil cooler',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'bt_sa_2',
        description: 'Check granulator Gear oil',
        example: 'GOOD',
      ),
    ];
  }

  static List<ChecklistItem> getBTYearlyItems() {
    return [
      ...getBTSemiAnnualItems(),
      ChecklistItem(
        id: 'bt_y_1',
        description: 'Drain HYD oil and clean tank',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'bt_y_2',
        description: 'Was the HYD oil reused',
        example: 'NO',
      ),
      ChecklistItem(
        id: 'bt_y_3',
        description: 'Clean suction strainer/Replace if required',
        example: 'CLEANED',
      ),
      ChecklistItem(
        id: 'bt_y_4',
        description: 'Clean motor cooling fans',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'bt_y_5',
        description: 'Check for bearing noise',
        example: 'GOOD',
      ),
    ];
  }

  // TER Checklists
  static List<ChecklistItem> getTERDailyItems() {
    return [
      ChecklistItem(
        id: 'ter_d_1',
        description: 'Check mould hoses not shaving',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'ter_d_2',
        description: 'Check mould hoses not leaking on coupling',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'ter_d_3',
        description: 'Check Mould clamps secure',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'ter_d_4',
        description: 'Are there any water leaks',
        example: 'NO',
      ),
      ChecklistItem(
        id: 'ter_d_5',
        description: 'Are there any HYD oil leaks',
        example: 'NO',
      ),
      ChecklistItem(
        id: 'ter_d_6',
        description: 'Door open motor stop functional LH/RH',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'ter_d_7',
        description: 'Are all the guards in place and secure',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'ter_d_8',
        description: 'HYD oil temp on screen LH/RH',
        example: '44/36',
      ),
      ChecklistItem(
        id: 'ter_d_9',
        description: 'is the HYD oil level correct LH/RH',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'ter_d_10',
        description: 'Grease mould pillars LH & RH',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'ter_d_11',
        description: 'Clean pillar holes LH & RH',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'ter_d_12',
        description: 'Test all E/STOPS',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'ter_d_13',
        description: 'Test safety curtain',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'ter_d_14',
        description: 'Are the platens Warm to touch',
        example: 'NO',
      ),
      ChecklistItem(
        id: 'ter_d_15',
        description: 'CLEAN ALL FLASH FROM PLATENS',
        example: 'DONE',
      ),
    ];
  }

  static List<ChecklistItem> getTERWeeklyItems() {
    return [
      ChecklistItem(
        id: 'ter_w_1',
        description: 'Clean all panel filters',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'ter_w_2',
        description: 'Clean water Strainer on main line',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'ter_w_3',
        description: 'Check shutter bolts secure',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'ter_w_4',
        description: 'Does the doors still open/close easy',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'ter_w_5',
        description: 'Check whisker protector secure',
        example: 'GOOD',
      ),
    ];
  }

  static List<ChecklistItem> getTERMonthlyItems() {
    return [
      ...getTERWeeklyItems(),
      ChecklistItem(
        id: 'ter_m_1',
        description: 'Check for air leaks',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'ter_m_2',
        description: 'Grease loader/unloader slides',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'ter_m_3',
        description: 'Check island interlock',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'ter_m_4',
        description: 'Check indication globes/replace',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'ter_m_5',
        description: 'Check for loose connections in panels',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'ter_m_6',
        description: 'Control on working pressure',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'ter_m_7',
        description: 'Does the pressure gauge work',
        example: 'YES',
      ),
    ];
  }

  static List<ChecklistItem> getTERQuarterlyItems() {
    return [
      ...getTERMonthlyItems(),
      ChecklistItem(
        id: 'ter_q_1',
        description: 'Ensure Ejector head and ext. secure',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'ter_q_2',
        description: 'Grease tie bars',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'ter_q_3',
        description: 'Check all thermocouples secure',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'ter_q_4',
        description: 'Clean debris out of oil pan',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'ter_q_5',
        description: 'Check HYD air filter/replace if required',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'ter_q_6',
        description: 'Clean linear units of any deposits',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'ter_q_7',
        description: 'Check ejector sensors secure',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'ter_q_8',
        description: 'TAKE OIL SAMPLE',
        example: 'DONE',
      ),
    ];
  }

  static List<ChecklistItem> getTERSemiAnnualItems() {
    return [
      ...getTERQuarterlyItems(),
      ChecklistItem(
        id: 'ter_sa_1',
        description: 'Re-Torque platen bolts',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'ter_sa_2',
        description: 'Check all other bolts secure on machine',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'ter_sa_3',
        description: 'Check tie bar nuts 0.05mm to beam',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'ter_sa_4',
        description: 'Replace filter media of panel fans',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'ter_sa_5',
        description: 'Check and clean oil cooler',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'ter_sa_6',
        description: 'Check water flow on platens',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'ter_sa_7',
        description: 'Check for oil leaks on main Ram',
        example: 'GOOD',
      ),
    ];
  }

  static List<ChecklistItem> getTERYearlyItems() {
    return [
      ...getTERSemiAnnualItems(),
      ChecklistItem(
        id: 'ter_y_1',
        description: 'Drain HYD oil and clean tank LH/RH',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'ter_y_2',
        description: 'Was the HYD oil reused',
        example: 'YES',
      ),
      ChecklistItem(
        id: 'ter_y_3',
        description: 'Drain DIATHERMIC oil and replace',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'ter_y_4',
        description: 'Clean suction strainer/Replace if required',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'ter_y_5',
        description: 'Clean motors and cooling fans',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'ter_y_6',
        description: 'Check for bearing noise',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'ter_y_7',
        description: 'Open and clean water ports',
        example: 'DONE',
      ),
      ChecklistItem(
        id: 'ter_y_8',
        description: 'Check ejector sensors secure',
        example: 'GOOD',
      ),
      ChecklistItem(
        id: 'ter_y_9',
        description: 'Disconnect/reconnect all thermocouple wires',
        example: 'DONE',
      ),
    ];
  }
}
