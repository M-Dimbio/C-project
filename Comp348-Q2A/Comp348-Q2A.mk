##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Release
ProjectName            :=Comp348-Q2A
ConfigurationName      :=Release
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=C:/Users/manso/Documents/Comp348
ProjectPath            :=C:/Users/manso/Documents/Comp348/Comp348-Q2A
IntermediateDirectory  :=../build-$(ConfigurationName)/Comp348-Q2A
OutDir                 :=../build-$(ConfigurationName)/Comp348-Q2A
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=manso
Date                   :=24/11/2019
CodeLitePath           :="C:/Program Files/CodeLite"
LinkerName             :=C:/MinGW/bin/g++.exe
SharedObjectLinkerName :=C:/MinGW/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=..\build-$(ConfigurationName)\bin\$(ProjectName)
Preprocessors          :=$(PreprocessorSwitch)NDEBUG 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
RcCmpOptions           := 
RcCompilerName         :=C:/MinGW/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/MinGW/bin/ar.exe rcu
CXX      := C:/MinGW/bin/g++.exe
CC       := C:/MinGW/bin/gcc.exe
CXXFLAGS :=  -O2 -Wall $(Preprocessors)
CFLAGS   :=  -O2 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/MinGW/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=../build-$(ConfigurationName)/Comp348-Q2A/main.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/Comp348-Q2A/.d $(Objects) 
	@if not exist "..\build-$(ConfigurationName)\Comp348-Q2A" mkdir "..\build-$(ConfigurationName)\Comp348-Q2A"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@if not exist "..\build-$(ConfigurationName)\Comp348-Q2A" mkdir "..\build-$(ConfigurationName)\Comp348-Q2A"
	@if not exist ""..\build-$(ConfigurationName)\bin"" mkdir ""..\build-$(ConfigurationName)\bin""

../build-$(ConfigurationName)/Comp348-Q2A/.d:
	@if not exist "..\build-$(ConfigurationName)\Comp348-Q2A" mkdir "..\build-$(ConfigurationName)\Comp348-Q2A"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/Comp348-Q2A/main.c$(ObjectSuffix): main.c ../build-$(ConfigurationName)/Comp348-Q2A/main.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/manso/Documents/Comp348/Comp348-Q2A/main.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Comp348-Q2A/main.c$(DependSuffix): main.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Comp348-Q2A/main.c$(ObjectSuffix) -MF../build-$(ConfigurationName)/Comp348-Q2A/main.c$(DependSuffix) -MM main.c

../build-$(ConfigurationName)/Comp348-Q2A/main.c$(PreprocessSuffix): main.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Comp348-Q2A/main.c$(PreprocessSuffix) main.c


-include ../build-$(ConfigurationName)/Comp348-Q2A//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


