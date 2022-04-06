package notice.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import notice.model.dao.NoticeDao;
import notice.model.vo.Notice;
import notice.model.vo.NoticePageData;

public class NoticeService {

	public NoticePageData selectList(int reqPage) {

		// 페이징처리
		// 사용자가 보내줘야하는 값
		// 1) 몇번째 페이지를 요청하는지

		// 개발자가 지정해야하는 값
		// 1) 한 페이지에 몇개의 게시물 보여줄지 -> 한 페이지 당 10개 게시물
		// 2) 페이지 네비게이션 길이 -> 5 (<이전 1 2 3 4 5 다음>)

		// 계산해야하는 값
		// 1) 총 게시물 수 -> totalCount
		// 2) 그 중에 요청페이지에 들어가야할 게시물 번호 -> start, end

		Connection conn = JDBCTemplate.getConnection();
		NoticeDao dao = new NoticeDao();
		int totalCount = dao.totalCount(conn); // 총 게시물 구하는 dao
		int numPerPage = 20; // 한페이지당 보여지는 게시물 수
		int totalPage = totalCount % numPerPage == 0 ? (totalCount / numPerPage) : (totalCount / numPerPage) + 1;

		// int totalPage = 0;
		// if (totalCount % numPerPage == 0) {
		// totalPage = totalCount / numPerPage;
		// } else {
		// totalPage = totalCount / numPerPage + 1;
		// }

		// System.out.println("totalCount : " + totalCount);

		// reqPage=1 -> start:1, end:10
		// reqPage=2 -> start:11, end:20
		// reqPage=3 -> start:21, end:30
		int start = (reqPage - 1) * numPerPage + 1; // 해당 페이지 게시물의 시작 번호
		int end = reqPage * numPerPage; // 해당 페이지 게시물의 끝 번호
		// System.out.println("시작번호 : " + start + " / 끝번호 : " + end);
		ArrayList<Notice> list = dao.selectList(conn, start, end);

		// 페이지 네비게이션
		int pageNaviSize = 5; // 페이지 네비게이션 길이 지정
		String pageNavi = ""; // 페이지 네비 태그 작성용

		// 페이지네비 시작번호 구하기
		// reqPage:1~5 ->1, reqPage:6~10 ->6, reqPage:11~15 ->11
		int pageNo = ((reqPage - 1) / pageNaviSize) * pageNaviSize + 1;

		// 이전 버튼 : 페이지 시작번호가 1이 아닌 경우에만 이전버튼 생성
		if (pageNo != 1) {
			pageNavi += "<a class='btn' href='/noticeList?reqPage=" + (pageNo - 1) + "'>이전</a>";
		}

		// 페이지 네비 숫자
		// 52개->totalPage=6개페이지
		// reqPage=1, pageNo=1
		for (int i = 0; i < pageNaviSize; i++) {
			if (reqPage == pageNo) {// 페이지네비가 현재 요청페이지인 경우(a태그가 필요없음)
				pageNavi += "<span class='selectPage'>" + pageNo + "</span>";
			} else {
				pageNavi += "<a class='btn' href='/noticeList?reqPage=" + pageNo + "'>" + pageNo + "</a>";
			}
			pageNo++;
			if (pageNo > totalPage) {
				break;
			}

		}

		// 다음 버튼
		if (pageNo <= totalPage) {
			pageNavi += "<a class='btn' href='/noticeList?reqPage=" + pageNo + "'>다음</a>";
		}

		JDBCTemplate.close(conn);

		// 하나의 데이터 타입을 여러개 저장 -> 배열
		// 여러 데이터 타입을 여러개 저장 -> 객체 -> NoticePageData 객체 생성

		NoticePageData npd = new NoticePageData(list, pageNavi);

		return npd;
	}

	public int insertNotice(Notice n) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new NoticeDao().insertNotice(conn, n);
		if (result > 0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}

	public Notice selectOneNotice(int noticeNo) {
		Connection conn = JDBCTemplate.getConnection();
		Notice n = new NoticeDao().selectOneNotice(conn, noticeNo);
		JDBCTemplate.close(conn);
		return n;
	}

	public static int deleteOneNotice(int noticeNo) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new NoticeDao().deleteOneNotice(conn, noticeNo);
		if (result > 0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}

	public int updateNotice(Notice n) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new NoticeDao().updateNotice(conn, n);
		if (result > 0) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}



	public Notice selectNoticeView(int noticeNo) {
		Connection conn = JDBCTemplate.getConnection();
		Notice n = new NoticeDao().selectOneNotice(conn, noticeNo);
		JDBCTemplate.close(conn);
		return n;
	}


}
