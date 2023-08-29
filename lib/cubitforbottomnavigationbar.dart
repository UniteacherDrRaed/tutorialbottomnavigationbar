import 'package:flutter_bloc/flutter_bloc.dart';

class CubitForBottomNavigationBar extends Cubit<int>{
     CubitForBottomNavigationBar():super(0);
     void setindex(int index)=>emit(index);
}
 
