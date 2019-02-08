private double fractionLength = .9; 
private int smallestBranch = 1; 
private double branchAngle = .4;  
public void setup() 
{    
	size(1200,800);    
	noLoop(); 
} 
public void draw() 
{   
	background(255,255,200);   
	stroke(200,120,120); 
	strokeWeight(7);  
	line(width/2+100,height-100,width/2+100,height-200);   
	drawBranches(width/2+100,height-200,100,3*Math.PI/2,4,1);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle, double we,float b) 
{   
	strokeWeight((float)we);
	stroke(200-b,120-b,120-b); 
	double angle1 = angle+branchAngle;
	double angle2 = angle-branchAngle;
	branchLength= branchLength*fractionLength;
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	line(x,y,endX1,endY1);
	line(x,y,endX2,endY2);
	if(branchLength>smallestBranch){
		drawBranches(endX1,endY1,branchLength-5,angle1,we*0.9,b+7.5);
		drawBranches(endX2,endY2,branchLength,angle2,we*0.9,b+7.5);
	}
	//your code here    
} 
