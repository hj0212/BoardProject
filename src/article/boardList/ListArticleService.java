package article.boardList;

import java.util.List;

import board.dto.BoardDAO;
import board.dto.BoardDTO;

public class ListArticleService {
	private BoardDAO articleDao = new BoardDAO();
	private int size = 10;
	
	public ArticlePage getArticlePage(int pageNum) throws Exception {
		int total = articleDao.selectCount();
		List<BoardDTO> content = articleDao.select((pageNum-1) * size + 1, (pageNum-1) * size + size);
		return new ArticlePage(total,pageNum,size,content);
	}
}
