//
//  main.cpp
//  Transitive closure matrix
//
//  Created by Josh Fishman on 4/17/17.
//  Copyright © 2017 Josh Fishman. All rights reserved.
//

#include <iostream>
#include <string>
using namespace std;
int main()
{
    int i,j,x;
    bool randall=false;
    cout<<"How big do you want your matrix to be? "<<endl;
    cin>>x;
    int arr1[x][x];
    cin.ignore();

    cout<<"Type either 0 or 1 for each element. Type \"random\" for a randomly generated element. Type \"all random\" for all numbers to be randomized."<<endl;
    for(i=0;i<x;i++)
        for(j=0;j<x;j++)
        {
            string y;

            if(!randall)
            {
                cout<<"["<<i+1<<"]"<<"["<<j+1<<"] = ";
                
                getline(cin, y);
                while((y!="0" )&& (y!="1")&&(y!="random")&&(y!="all random"))
                {
                    cout<<"Try again. Type 0, 1, \"random\", or \"all random\"."<<endl;
                    getline(cin, y);
                }
                
            }
            
            if(y=="all random")
            {
                randall=true;
            }
            if(randall)
            {
                arr1[i][j]=rand() % 2;
            }
            else if(y=="random")
            {
                arr1[i][j]=rand() % 2;
            }
            else
            {
                int z=stoi(y);
                if(z==0)
                {
                    arr1[i][j]=0;
                }
                else
                {
                    arr1[i][j]=1;
                }
            }
        }
    cout<<"Before:"<<endl;
    for(i=0;i<x;i++)
        for(j=0;j<x;j++)
        {
            
            if(j==0 && i!=0)
            {
                cout<<endl;
            }
            cout<<arr1[i][j]<<" ";
        }
    for(int l;l<x;l++)
    {
        for(int counter=0;counter<x;counter++)
        {
            for(i=0;i<x;i++)
            {
                for(j=0;j<x;j++)
                {
                    if((arr1[counter][j]==1)&&(arr1[j][i]==1))
                    {
                        arr1[counter][i]=1;
                        
                        
                    }
                }
            }
            
        }
        
    }

    cout<<endl<<"After:"<<endl;
    for(i=0;i<x;i++)
        for(j=0;j<x;j++)
        {
            
            if(j==0 && i!=0)
            {
                cout<<endl;
            }
            cout<<arr1[i][j]<<" ";
        }
    
    
}
