//----18511160023 EMETUCHE WINNER CHIDIUTO
//----Final Examination,
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <unistd.h>
#include <curses.h>
#include <string.h>
#include <unistd.h>
#include <sys/select.h>
#include <termios.h>
#include <chrono>
#include <ctime>
#include <time.h>
#include <iostream>
using namespace std;
class Student{
    char ID[20];
    char name[20];
    int type;
    char citizenID[30];
    int mark;
  public:
    Student(char id1[],char name1[],int t1=0){
        strcpy(ID,id1);strcpy(name,name1);type=t1;
    }
    Student(){
       
    }
    virtual void Show(){
        cout<<ID<<" "<<name<<" ";
    }
    int  GetType(){
        return type;
    }
    void SetType(int t){
        type=t;
    }
    void SetName(char name1[]) {
        strcpy(name,name1);
    }
    void SetCitizenID(char citizenID_[]) {
        strcpy(citizenID,citizenID_);
    }
    void SetMark(int mark_) {
        mark=mark_;
    }
    double GetMark() {
        return mark;
    }
    char *GetCitizenID() {
        return citizenID;
    }
    char *GetName() {
        return name;
    }
    void SetID(char id[]) {
        strcpy(ID,id);
    }
    char *GetID(){ return ID;}
};
class Teacher{
    char ID[20];
    char name[20];
    int type;
    char citizenID[30];
    double salary;
  public:
    Teacher(char id1[],char name1[],int t1=0){
        strcpy(ID,id1);
        strcpy(name,name1);
        type=t1;
    }
    Teacher(){
       
    }
    virtual void Show(){
        cout<<ID<<" "<<name<<" ";
    }
    int  GetType(){ return type;}
    void SetType(int t){
        type=t;
    }
    void SetName(char name1[]) {
        strcpy(name,name1);
    }
    void SetCitizenID(char citizenID_[]) {
        strcpy(citizenID,citizenID_);
    }
    void SetSalary(double salary_) {
        salary =salary_;
    }
    double GetSalary() {
       return salary;
    }
    char *GetName() { return name;}
    char *GetCitizenID() {
        return citizenID;
    }
    void SetID(char id_[]) {
        strcpy(ID,id_);
    }
    char *GetID(){ return ID;}
};
int main( ){
    bool continueTest=true;
    int maximumBucket=100;
    int studentPosition=0;
    int teacherPosition=0;
    int choice=11;
    Student eachStudent[maximumBucket];
    Teacher eachTeacher[maximumBucket];
    while(continueTest && studentPosition<maximumBucket ){
        cout<<endl<<"******** Choose an Option below to perform test   ********"<<endl;
        cout<<"********  0 Exit  ********"<<endl;
        cout<<"********  1 Add Student  ********"<<endl;
        cout<<"********  2 Add Teacher  ********"<<endl;
        cout<<"********  3 List all Students  ********"<<endl;
        cout<<"********  4 List all Teachers  ********"<<endl;
        cout<<"********  5 List all Students and Teachers  ********"<<endl;
        char ID[20];
        char name[20];
        int type;
        char citizenID[30];
        int mark;
        double salary;
        cin>>choice;
        switch(choice) {
            case 0  :
                continueTest=false;
                exit(0);
                break;
            case 1  :
                cout<<"******** Let us add a Student          **********"<<endl;
                cout<<"Enter the ID, Name, type, mark and CitizenID of Student"<<endl;
                cin>>ID;
                cin>>name;
                cin>>citizenID;
                cin>>mark;
                type=1;
                eachStudent[studentPosition].SetID(ID);
                eachStudent[studentPosition].SetName(name);
                eachStudent[studentPosition].SetType(type);
                eachStudent[studentPosition].SetMark(mark);
                eachStudent[studentPosition].SetCitizenID(citizenID);
                studentPosition+=1;
                break;
            case 2  :
                cout<<"******** Let us add a Teacher          **********"<<endl;
                cout<<"Enter the ID, Name, type, mark and CitizenID of Teacher"<<endl;
                cin>>ID;
                cin>>name;
                cin>>citizenID;
                cin>>salary;
                type=2;
                eachTeacher[teacherPosition].SetID(ID);
                eachTeacher[teacherPosition].SetName(name);
                eachTeacher[teacherPosition].SetType(type);
                eachTeacher[teacherPosition].SetSalary(salary);
                eachTeacher[teacherPosition].SetCitizenID(citizenID);
                cout<< ID<<" "<<name <<" "<< type<< salary<<" "<< citizenID<<endl;
                teacherPosition+=1;
                break;
            case 3  :
                cout<<"******** Let us List all Students          **********"<<endl;
                for(int listEach=0; listEach<studentPosition; listEach++  ){
                    cout<<eachStudent[listEach].GetID()<<"  "<<eachStudent[listEach].GetName()<<" "<<" "<<eachStudent[listEach].GetCitizenID()<<" "<<eachStudent[listEach].GetMark()<<endl;
                }
                break;
            case 4  :
                cout<<"******** Let us List all Teachers          **********"<<endl;
                for(int listEach=0; listEach<teacherPosition; listEach++  ){
                    cout<<eachTeacher[listEach].GetID()<<"  "<<eachTeacher[listEach].GetName()<<" "<<" "<<eachTeacher[listEach].GetCitizenID()<<" "<<eachTeacher[listEach].GetSalary()<<endl;
                }
                break;
            case 5  :
                cout<<"***** Let us List all Teachers  and Students    *****"<<endl;
                cout<<"******** Students     **********"<<endl;
                for(int listEach=0; listEach<studentPosition; listEach++  ){
                    cout<<eachStudent[listEach].GetID()<<"  "<<eachStudent[listEach].GetName()<<" "<<" "<<eachStudent[listEach].GetCitizenID()<<" "<<eachStudent[listEach].GetMark()<<endl;
                }
                cout<<"******** Teachers     **********"<<endl;
                for(int listEach=0; listEach<teacherPosition; listEach++  ){
                    cout<<eachTeacher[listEach].GetID()<<"  "<<eachTeacher[listEach].GetName()<<" "<<" "<<eachTeacher[listEach].GetCitizenID()<<" "<<eachTeacher[listEach].GetSalary()<<endl;
                }
                break;
            default :
                exit(0);
        }
    }
}
