//#1 EULER PROBLEM #1   //

function threeFiveDoer(number){

    var theSum =0;
    var sumArray =[];   

    for(var i=1;i<number;i++){
        if(i%3==0 ||i%5==0){
            sumArray.push(i);
            theSum+=i;
        }
    }

    console.log("The sum is: " + theSum);
    console.log(sumArray.toString());

}

  threeFiveDoer(1000)  

  //#2 EULER PROBLEM #2   //  

function EvenFibber(number){

// Fn=Fn-1 + Fn-2 // 
    var seedArray =[0,1,1,2];
    var outArray = seedArray;
    var tempSum =0;
    var evenSum=0;  

    for(var i=3;i<number-1;i++){
        var tempSum = seedArray[i] + seedArray[i-1];
        outArray.push(tempSum);

    }

    console.log(outArray.toString());
    for(var i in outArray){
        if(outArray[i]%2==0){
            evenSum+=outArray[i];
        }
    }
     console.log(evenSum);      

}

EvenFibber(34);




//Project Euler Problem #3, Whilst//


function findPrimeFactors(number){
      var solutions =[];      
      var problemLength = number;
      var i=2;
     
     while(number != 1){
         while(number%i != 0){
             i+=1; 
         }
         number = number/i;
         solutions.push(i);
         i=2;
     }
     console.log("For the value " + problemLength + " The solutions are: " + solutions.toString());
 }
   findPrimeFactors(600851475143);       
             
             
         
        
     //Project Euler Problem #3, Foar// 
     
       function theLoop(number){
            var solutions =[];      
           var problemLength = number;
           
           
          for(var i=0;i<10;i++){
              for(var j=2;j<7000;j++){
                  if(number%j===0 && number>1){                 
                      solutions.push(j);              
                      number = number/j;
                  }
              }
          }
            console.log("For the value " + problemLength + " The solutions are: " + solutions.toString());
       }

theLoop(600851475143);
                
          
              
            
        
    
         
 
             
      
        
        
    
      
        
             
