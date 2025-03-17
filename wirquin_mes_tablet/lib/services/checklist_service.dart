import '../models/checklist_models.dart';
import '../data/checklist_data.dart';

class ChecklistService {
  static List<Department> getDepartments() {
    return [
      Department(
        id: 'im',
        name: 'Injection Molding',
        machines: [
          Machine(
            id: 'im_1',
            name: 'IM Machine 1',
            checklists: [
              Checklist(
                id: 'im_1_daily',
                name: 'Daily Checklist',
                category: ChecklistCategory.im,
                frequency: ChecklistFrequency.daily,
                items: ChecklistData.getIMDailyItems(),
              ),
              Checklist(
                id: 'im_1_weekly',
                name: 'Weekly Checklist',
                category: ChecklistCategory.im,
                frequency: ChecklistFrequency.weekly,
                items: ChecklistData.getIMWeeklyItems(),
              ),
              Checklist(
                id: 'im_1_monthly',
                name: 'Monthly Checklist',
                category: ChecklistCategory.im,
                frequency: ChecklistFrequency.monthly,
                items: ChecklistData.getIMMonthlyItems(),
                includesPreviousChecklist: true,
              ),
              Checklist(
                id: 'im_1_quarterly',
                name: 'Quarterly Checklist',
                category: ChecklistCategory.im,
                frequency: ChecklistFrequency.quarterly,
                items: ChecklistData.getIMQuarterlyItems(),
                includesPreviousChecklist: true,
              ),
              Checklist(
                id: 'im_1_semi_annual',
                name: '6-Monthly Checklist',
                category: ChecklistCategory.im,
                frequency: ChecklistFrequency.semiAnnual,
                items: ChecklistData.getIMSemiAnnualItems(),
                includesPreviousChecklist: true,
              ),
              Checklist(
                id: 'im_1_yearly',
                name: 'Yearly Checklist',
                category: ChecklistCategory.im,
                frequency: ChecklistFrequency.yearly,
                items: ChecklistData.getIMYearlyItems(),
                includesPreviousChecklist: true,
              ),
            ],
          ),
        ],
      ),
      Department(
        id: 'bt',
        name: 'Bettatec',
        machines: [
          Machine(
            id: 'bt_1',
            name: 'BT Machine 1',
            checklists: [
              Checklist(
                id: 'bt_1_daily',
                name: 'Daily Checklist',
                category: ChecklistCategory.bt,
                frequency: ChecklistFrequency.daily,
                items: ChecklistData.getBTDailyItems(),
              ),
              Checklist(
                id: 'bt_1_weekly',
                name: 'Weekly Checklist',
                category: ChecklistCategory.bt,
                frequency: ChecklistFrequency.weekly,
                items: ChecklistData.getBTWeeklyItems(),
              ),
              Checklist(
                id: 'bt_1_monthly',
                name: 'Monthly Checklist',
                category: ChecklistCategory.bt,
                frequency: ChecklistFrequency.monthly,
                items: ChecklistData.getBTMonthlyItems(),
                includesPreviousChecklist: true,
              ),
              Checklist(
                id: 'bt_1_quarterly',
                name: 'Quarterly Checklist',
                category: ChecklistCategory.bt,
                frequency: ChecklistFrequency.quarterly,
                items: ChecklistData.getBTQuarterlyItems(),
                includesPreviousChecklist: true,
              ),
              Checklist(
                id: 'bt_1_semi_annual',
                name: '6-Monthly Checklist',
                category: ChecklistCategory.bt,
                frequency: ChecklistFrequency.semiAnnual,
                items: ChecklistData.getBTSemiAnnualItems(),
                includesPreviousChecklist: true,
              ),
              Checklist(
                id: 'bt_1_yearly',
                name: 'Yearly Checklist',
                category: ChecklistCategory.bt,
                frequency: ChecklistFrequency.yearly,
                items: ChecklistData.getBTYearlyItems(),
                includesPreviousChecklist: true,
              ),
            ],
          ),
        ],
      ),
      Department(
        id: 'ter',
        name: 'Terrestrial',
        machines: [
          Machine(
            id: 'ter_1',
            name: 'TER Machine 1',
            checklists: [
              Checklist(
                id: 'ter_1_daily',
                name: 'Daily Checklist',
                category: ChecklistCategory.ter,
                frequency: ChecklistFrequency.daily,
                items: ChecklistData.getTERDailyItems(),
              ),
              Checklist(
                id: 'ter_1_weekly',
                name: 'Weekly Checklist',
                category: ChecklistCategory.ter,
                frequency: ChecklistFrequency.weekly,
                items: ChecklistData.getTERWeeklyItems(),
              ),
              Checklist(
                id: 'ter_1_monthly',
                name: 'Monthly Checklist',
                category: ChecklistCategory.ter,
                frequency: ChecklistFrequency.monthly,
                items: ChecklistData.getTERMonthlyItems(),
                includesPreviousChecklist: true,
              ),
              Checklist(
                id: 'ter_1_quarterly',
                name: 'Quarterly Checklist',
                category: ChecklistCategory.ter,
                frequency: ChecklistFrequency.quarterly,
                items: ChecklistData.getTERQuarterlyItems(),
                includesPreviousChecklist: true,
              ),
              Checklist(
                id: 'ter_1_semi_annual',
                name: '6-Monthly Checklist',
                category: ChecklistCategory.ter,
                frequency: ChecklistFrequency.semiAnnual,
                items: ChecklistData.getTERSemiAnnualItems(),
                includesPreviousChecklist: true,
              ),
              Checklist(
                id: 'ter_1_yearly',
                name: 'Yearly Checklist',
                category: ChecklistCategory.ter,
                frequency: ChecklistFrequency.yearly,
                items: ChecklistData.getTERYearlyItems(),
                includesPreviousChecklist: true,
              ),
            ],
          ),
        ],
      ),
    ];
  }
}
