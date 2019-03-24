package club.agtop.p2p.controller;

import club.agtop.p2p.entity.RepayRecord;
import club.agtop.p2p.service.RepayRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class RepayRecordController {
    @Autowired
    private RepayRecordService repayRecordService;

    @RequestMapping("/unrepayList")
    public String unrepayList(HttpServletRequest request) {
        List<RepayRecord> repayRecords = repayRecordService.repayList();
        request.setAttribute("repay", repayRecords);
        return "admin/unrepayment";
    }

    @RequestMapping("/repayList")
    public String repayList(HttpServletRequest request) {
        List<RepayRecord> repayRecords = repayRecordService.repayList();
        request.setAttribute("repay", repayRecords);
        return "admin/repayment";
    }
}
