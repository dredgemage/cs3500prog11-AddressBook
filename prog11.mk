##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=prog11
ConfigurationName      :=Debug
WorkspacePath          := "F:\cworkspaces\cs3500"
ProjectPath            := "F:\cworkspaces\cs3500\prog11"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Nikola Tristani
Date                   :=04/03/15
CodeLitePath           :="F:\Program Files\CodeLite"
LinkerName             :=F:/MinGW/bin/g++.exe 
SharedObjectLinkerName :=F:/MinGW/bin/g++.exe -shared -fPIC
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
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="prog11.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=F:/MinGW/bin/windres.exe 
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
AR       := F:/MinGW/bin/ar.exe rcu
CXX      := F:/MinGW/bin/g++.exe 
CC       := F:/MinGW/bin/gcc.exe 
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := F:/MinGW/bin/as.exe 


##
## User defined environment variables
##
CodeLiteDir:=F:\Program Files\CodeLite
Objects0=$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IntermediateDirectory)/commands.c$(ObjectSuffix) $(IntermediateDirectory)/filefunctions.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.c$(ObjectSuffix): main.c $(IntermediateDirectory)/main.c$(DependSuffix)
	$(CC) $(SourceSwitch) "F:/cworkspaces/cs3500/prog11/main.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.c$(DependSuffix): main.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.c$(ObjectSuffix) -MF$(IntermediateDirectory)/main.c$(DependSuffix) -MM "main.c"

$(IntermediateDirectory)/main.c$(PreprocessSuffix): main.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.c$(PreprocessSuffix) "main.c"

$(IntermediateDirectory)/commands.c$(ObjectSuffix): commands.c $(IntermediateDirectory)/commands.c$(DependSuffix)
	$(CC) $(SourceSwitch) "F:/cworkspaces/cs3500/prog11/commands.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/commands.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/commands.c$(DependSuffix): commands.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/commands.c$(ObjectSuffix) -MF$(IntermediateDirectory)/commands.c$(DependSuffix) -MM "commands.c"

$(IntermediateDirectory)/commands.c$(PreprocessSuffix): commands.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/commands.c$(PreprocessSuffix) "commands.c"

$(IntermediateDirectory)/filefunctions.c$(ObjectSuffix): filefunctions.c $(IntermediateDirectory)/filefunctions.c$(DependSuffix)
	$(CC) $(SourceSwitch) "F:/cworkspaces/cs3500/prog11/filefunctions.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/filefunctions.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/filefunctions.c$(DependSuffix): filefunctions.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/filefunctions.c$(ObjectSuffix) -MF$(IntermediateDirectory)/filefunctions.c$(DependSuffix) -MM "filefunctions.c"

$(IntermediateDirectory)/filefunctions.c$(PreprocessSuffix): filefunctions.c
	@$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/filefunctions.c$(PreprocessSuffix) "filefunctions.c"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


