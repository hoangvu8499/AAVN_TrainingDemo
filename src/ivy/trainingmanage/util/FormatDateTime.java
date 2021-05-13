package ivy.trainingmanage.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class FormatDateTime {
	private static final String DATE_PATTERN_TEMP = "yyyy-MM-dd_HH-mm-ss";
	
	public String FormatDateTime(Date date) {
		return new SimpleDateFormat(DATE_PATTERN_TEMP).format(date);
	}

}
