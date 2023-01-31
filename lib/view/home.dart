import 'package:cloud_functions/blocks/crudbloc_cubit.dart';
import 'package:cloud_functions/blocks/crudbloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Screen"),
          actions: [
            BlocConsumer<DataCubit, DataState>(
              builder: (context, state) {
                return IconButton(
                    onPressed: () {
                      BlocProvider.of<DataCubit>(context).createData("new");
                    },
                    icon: Icon(Icons.add));
              },
              listener: (context, state) {},
            )
          ],
        ),
        body: SafeArea(child: BlocBuilder<DataCubit, DataState>(
          builder: (context, state) {
            if (state is DataLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is DataLoadedState) {
              return ListView.builder(
                  itemCount: state.list.length,
                  itemBuilder: (c, i) {
                    var d = state.list[i];
                    return Text(d.name ?? "");
                  });
            }
            if (state is DataFailureState) {
              return Text(state.error);
            }
            return Center(child: Text("error"));
          },
        )));
  }
}
