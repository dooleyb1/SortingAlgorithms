JFLAGS = -cp
JC = javac
JVM = java
TEST = hamcrest-core-1.3.jar:junit-4.11.jar:. 
BUILD = junit-4.11.jar:. 

.SUFFIXES: .java .class .jar

default:
	$(JC) $(JFLAGS) $(BUILD) *.java

insertion:
	@$(JVM) $(JFLAGS) $(TEST) SortComparison -i

quick:
	@$(JVM) $(JFLAGS) $(TEST) SortComparison -q

merge:
	@$(JVM) $(JFLAGS) $(TEST) SortComparison -m

shell:
	@$(JVM) $(JFLAGS) $(TEST) SortComparison -sh

selection:
	@$(JVM) $(JFLAGS) $(TEST) SortComparison -se

bubble:
	@$(JVM) $(JFLAGS) $(TEST) SortComparison -b

time:
	$(JVM) $(JFLAGS) $(TEST) SortComparisonTest

clean:
	$(RM) *.class

##Need To compile project with the juinity jar
##To run need to run the Test file with the hamcrest and Junit

