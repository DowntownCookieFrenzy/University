//Self-Organizing List
public class SOList<T extends Comparable<T>> extends DLList<T> {

	public void access(T value) {
		int pos = getPosition(value);
		if(pos == -1){
			addToTail(value);
			return;
		}

		remove(value);
		addToHead(value);
		/// Move the accessed node to head. (store head temporarily)


	}

}
